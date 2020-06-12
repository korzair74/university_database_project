/*The average grade given by each professor*/

SELECT
 AVG(grade),
 professor_name
FROM grades
INNER JOIN professors ON grade_professor_id = professors.professor_id
GROUP BY professor_name;


/*The top grades for each student*/
SELECT
	MAX(grade),
    student_name
FROM grades
INNER JOIN students ON grades.grade_student_id = students.student_id
GROUP BY student_name;

/*Create a summary report of courses and their average grades, sorted by the most
 challenging course (course with the lowest average grade) to the easiest course */

SELECT
 AVG(grade),
 course_name
FROM grades
INNER JOIN courses ON grades.grade_id = courses.course_id
GROUP BY course_name
ORDER BY AVG(grade) DESC;

/*Group students by the courses that they are enrolled in*/
SELECT
	course_name,
    student_name
FROM courses
INNER JOIN students ON courses.enrolled_student_id = students.student_id
GROUP BY course_name, student_name
Order BY course_name;


/*Finding which student and professor have the most courses in common*/

SELECT 
	MAX(Counter),
    course_name,
    professor_name,
    student_name
FROM (SELECT 
	COUNT(course_id) 'Counter',
    course_name,
    professor_name,
    student_name
FROM courses
JOIN students ON courses.enrolled_student_id = students.student_id 
JOIN professors ON courses.assigned_professor_id = professors.professor_id
GROUP BY student_name, professor_name) AS maxCountFunction;
