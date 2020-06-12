CREATE SCHEMA university_project;

CREATE TABLE `university_project`.`students` (
  `student_id` INT NOT NULL AUTO_INCREMENT,
  `student_name` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`student_id`),
  UNIQUE INDEX `student_id_UNIQUE` (`student_id` ASC) VISIBLE);


CREATE TABLE `university_project`.`professors` (
  `professor_id` INT NOT NULL AUTO_INCREMENT,
  `professor_name` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`professor_id`),
  UNIQUE INDEX `professor_id_UNIQUE` (`professor_id` ASC) VISIBLE);

CREATE TABLE `university_project`.`courses` (
  `course_id` INT NOT NULL AUTO_INCREMENT,
  `course_name` VARCHAR(150) NOT NULL,
  `assigned_professor_id` INT NOT NULL,
  `enrolled_student_id` INT NOT NULL,
  PRIMARY KEY (`course_id`),
  UNIQUE INDEX `course_id_UNIQUE` (`course_id` ASC) VISIBLE,
  INDEX `assigned_professor_id_idx` (`assigned_professor_id` ASC) VISIBLE,
  INDEX `enrolled_student_id_idx` (`enrolled_student_id` ASC) VISIBLE,
  CONSTRAINT `assigned_professor_id`
    FOREIGN KEY (`assigned_professor_id`)
    REFERENCES `university_project`.`professors` (`professor_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `enrolled_student_id`
    FOREIGN KEY (`enrolled_student_id`)
    REFERENCES `university_project`.`students` (`student_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE);

CREATE TABLE `university_project`.`grades` (
  `grade_id` INT NOT NULL AUTO_INCREMENT,
  `grade` DECIMAL(5,2) NOT NULL,
  `grade_course_id` INT NOT NULL,
  `grade_student_id` INT NOT NULL,
  `grade_professor_id` INT NOT NULL,
  PRIMARY KEY (`grade_id`),
  UNIQUE INDEX `grade_id_UNIQUE` (`grade_id` ASC) VISIBLE,
  INDEX `grade_course_id_idx` (`grade_course_id` ASC) VISIBLE,
  INDEX `grade_student_id_idx` (`grade_student_id` ASC) VISIBLE,
  INDEX `grade_professor_id_idx` (`grade_professor_id` ASC) VISIBLE,
  CONSTRAINT `grade_course_id`
    FOREIGN KEY (`grade_course_id`)
    REFERENCES `university_project`.`courses` (`course_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `grade_student_id`
    FOREIGN KEY (`grade_student_id`)
    REFERENCES `university_project`.`students` (`student_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `grade_professor_id`
    FOREIGN KEY (`grade_professor_id`)
    REFERENCES `university_project`.`professors` (`professor_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION); 
    
USE university_project;

INSERT INTO students (student_name)
VALUES ('Fritz Herrera');
INSERT INTO students (student_name)
VALUES ('Bridget Roach');
INSERT INTO students (student_name)
VALUES ('Elise Sweeney');
INSERT INTO students (student_name)
VALUES ('Jack Moon');
INSERT INTO students (student_name)
VALUES ('Renee Glover');
INSERT INTO students (student_name)
VALUES ('Sean Wolfe');
INSERT INTO students (student_name)
VALUES ('Jasper Serrano');
INSERT INTO students (student_name)
VALUES ('Sonny Roberson');
INSERT INTO students (student_name)
VALUES ('Blanche King');
INSERT INTO students (student_name)
VALUES ('Holly Campos');
INSERT INTO students (student_name)
VALUES ('Art Perez');
INSERT INTO students (student_name)
VALUES ('Dino Weaver');
INSERT INTO students (student_name)
VALUES ('Noah Barrett');
INSERT INTO students (student_name)
VALUES ('Renaldo Morse');
INSERT INTO students (student_name)
VALUES ('Lois Leblanc');
INSERT INTO students (student_name)
VALUES ('Deana Meadows');
INSERT INTO students (student_name)
VALUES ('Angel Bartlett');
INSERT INTO students (student_name)
VALUES ('Tuan Little');
INSERT INTO students (student_name)
VALUES ('Bruno Sosa');
INSERT INTO students (student_name)
VALUES ('Jerri Montoya');
INSERT INTO students (student_name)
VALUES ('Lori Francis');
INSERT INTO students (student_name)
VALUES ('Jackie Boyle');
INSERT INTO students (student_name)
VALUES ('Jamey Johnson');
INSERT INTO students (student_name)
VALUES ('Francesco Frazier'); 

INSERT INTO professors (professor_name)
VALUES ('Darcy Patrick');
INSERT INTO professors (professor_name)
VALUES ('Jewell Beasley');
INSERT INTO professors (professor_name)
VALUES ('Anastasia Henson');
INSERT INTO professors (professor_name)
VALUES ('Grant Campbell');
INSERT INTO professors (professor_name)
VALUES ('Winnie Branch');

INSERT INTO courses (course_name, assigned_professor_id, enrolled_student_id)
VALUES ('Alien Musical Arts', 1, 1);
INSERT INTO courses (course_name, assigned_professor_id, enrolled_student_id)
VALUES ('Alien Musical Arts', 1, 2);
INSERT INTO courses (course_name, assigned_professor_id, enrolled_student_id)
VALUES ('Alien Musical Arts', 1, 3);
INSERT INTO courses (course_name, assigned_professor_id, enrolled_student_id)
VALUES ('Alien Musical Arts', 1, 4);
INSERT INTO courses (course_name, assigned_professor_id, enrolled_student_id)
VALUES ('Alien Musical Arts', 1, 5);
INSERT INTO courses (course_name, assigned_professor_id, enrolled_student_id)
VALUES ('Alien Musical Arts', 1, 6);
INSERT INTO courses (course_name, assigned_professor_id, enrolled_student_id)
VALUES ('Alien Musical Arts', 1, 7);
INSERT INTO courses (course_name, assigned_professor_id, enrolled_student_id)
VALUES ('Alien Musical Arts', 1, 8);
INSERT INTO courses (course_name, assigned_professor_id, enrolled_student_id)
VALUES ('Alien Musical Arts', 1, 9);
INSERT INTO courses (course_name, assigned_professor_id, enrolled_student_id)
VALUES ('Alien Musical Arts', 1, 10);
INSERT INTO courses (course_name, assigned_professor_id, enrolled_student_id)
VALUES ('Alien Biotechnology', 2, 1);
INSERT INTO courses (course_name, assigned_professor_id, enrolled_student_id)
VALUES ('Alien Biotechnology', 2, 2);
INSERT INTO courses (course_name, assigned_professor_id, enrolled_student_id)
VALUES ('Alien Biotechnology', 2, 3);
INSERT INTO courses (course_name, assigned_professor_id, enrolled_student_id)
VALUES ('Alien Biotechnology', 2, 7);
INSERT INTO courses (course_name, assigned_professor_id, enrolled_student_id)
VALUES ('Alien Biotechnology', 2, 8);
INSERT INTO courses (course_name, assigned_professor_id, enrolled_student_id)
VALUES ('Alien Biotechnology', 2, 9);
INSERT INTO courses (course_name, assigned_professor_id, enrolled_student_id)
VALUES ('Alien Biotechnology', 2, 10);
INSERT INTO courses (course_name, assigned_professor_id, enrolled_student_id)
VALUES ('Alien Biotechnology', 2, 14);
INSERT INTO courses (course_name, assigned_professor_id, enrolled_student_id)
VALUES ('Alien Biotechnology', 2, 15);
INSERT INTO courses (course_name, assigned_professor_id, enrolled_student_id)
VALUES ('Alien Biotechnology', 2, 16);
INSERT INTO courses (course_name, assigned_professor_id, enrolled_student_id)
VALUES ('Alien Biotechnology', 2, 19);
INSERT INTO courses (course_name, assigned_professor_id, enrolled_student_id)
VALUES ('Alien Biotechnology', 2, 20);
INSERT INTO courses (course_name, assigned_professor_id, enrolled_student_id)
VALUES ('Alien Criminal Justice', 3, 4);
INSERT INTO courses (course_name, assigned_professor_id, enrolled_student_id)
VALUES ('Alien Criminal Justice', 3, 5);
INSERT INTO courses (course_name, assigned_professor_id, enrolled_student_id)
VALUES ('Alien Criminal Justice', 3, 6);
INSERT INTO courses (course_name, assigned_professor_id, enrolled_student_id)
VALUES ('Alien Criminal Justice', 3, 10);
INSERT INTO courses (course_name, assigned_professor_id, enrolled_student_id)
VALUES ('Alien Criminal Justice', 3, 11);
INSERT INTO courses (course_name, assigned_professor_id, enrolled_student_id)
VALUES ('Alien Criminal Justice', 3, 12);
INSERT INTO courses (course_name, assigned_professor_id, enrolled_student_id)
VALUES ('Alien Criminal Justice', 3, 16);
INSERT INTO courses (course_name, assigned_professor_id, enrolled_student_id)
VALUES ('Alien Criminal Justice', 3, 17);
INSERT INTO courses (course_name, assigned_professor_id, enrolled_student_id)
VALUES ('Alien Criminal Justice', 3, 18);
INSERT INTO courses (course_name, assigned_professor_id, enrolled_student_id)
VALUES ('Alien Criminal Justice', 3, 22);
INSERT INTO courses (course_name, assigned_professor_id, enrolled_student_id)
VALUES ('Alien Psychology', 4, 24);
INSERT INTO courses (course_name, assigned_professor_id, enrolled_student_id)
VALUES ('Alien Psychology', 4, 23);
INSERT INTO courses (course_name, assigned_professor_id, enrolled_student_id)
VALUES ('Alien Psychology', 4, 22);
INSERT INTO courses (course_name, assigned_professor_id, enrolled_student_id)
VALUES ('Alien Psychology', 4, 21);
INSERT INTO courses (course_name, assigned_professor_id, enrolled_student_id)
VALUES ('Alien Psychology', 4, 20);
INSERT INTO courses (course_name, assigned_professor_id, enrolled_student_id)
VALUES ('Alien Psychology', 4, 19);
INSERT INTO courses (course_name, assigned_professor_id, enrolled_student_id)
VALUES ('Alien Psychology', 4, 18);
INSERT INTO courses (course_name, assigned_professor_id, enrolled_student_id)
VALUES ('Alien Psychology', 4, 1);
INSERT INTO courses (course_name, assigned_professor_id, enrolled_student_id)
VALUES ('Alien Organic Chemistry', 5, 24);
INSERT INTO courses (course_name, assigned_professor_id, enrolled_student_id)
VALUES ('Alien Organic Chemistry', 5, 21);
INSERT INTO courses (course_name, assigned_professor_id, enrolled_student_id)
VALUES ('Alien Organic Chemistry', 5, 23);
INSERT INTO courses (course_name, assigned_professor_id, enrolled_student_id)
VALUES ('Alien Organic Chemistry', 5, 15);
INSERT INTO courses (course_name, assigned_professor_id, enrolled_student_id)
VALUES ('Alien Organic Chemistry', 5, 12);
INSERT INTO courses (course_name, assigned_professor_id, enrolled_student_id)
VALUES ('Alien Organic Chemistry', 5, 13);
INSERT INTO courses (course_name, assigned_professor_id, enrolled_student_id)
VALUES ('Alien Organic Chemistry', 5, 10);
INSERT INTO courses (course_name, assigned_professor_id, enrolled_student_id)
VALUES ('Alien Organic Chemistry', 5, 17);
INSERT INTO courses (course_name, assigned_professor_id, enrolled_student_id)
VALUES ('Alien Organic Chemistry', 5, 9);
INSERT INTO courses (course_name, assigned_professor_id, enrolled_student_id)
VALUES ('Alien Organic Chemistry', 5, 6);
INSERT INTO courses (course_name, assigned_professor_id, enrolled_student_id)
VALUES ('Alien Organic Chemistry', 5, 5);
INSERT INTO courses (course_name, assigned_professor_id, enrolled_student_id)
VALUES ('Alien Organic Chemistry', 5, 17);
INSERT INTO courses (course_name, assigned_professor_id, enrolled_student_id)
VALUES ('Alien Organic Chemistry', 5, 22);
INSERT INTO courses (course_name, assigned_professor_id, enrolled_student_id)
VALUES ('Alien Organic Chemistry', 5, 11);

INSERT INTO grades (grade, grade_course_id, grade_professor_id, grade_student_id)	
VALUES (88.25 ,1, 1, 1);
INSERT INTO grades (grade, grade_course_id, grade_professor_id, grade_student_id)	
VALUES (98.2, 2, 1, 2);
INSERT INTO grades (grade, grade_course_id, grade_professor_id, grade_student_id)	
VALUES (78.45 ,3, 1, 3);
INSERT INTO grades (grade, grade_course_id, grade_professor_id, grade_student_id)	
VALUES (88, 4, 1, 4);
INSERT INTO grades (grade, grade_course_id, grade_professor_id, grade_student_id)
VALUES (93.60 ,5, 1, 5);
INSERT INTO grades (grade, grade_course_id, grade_professor_id, grade_student_id)
VALUES (64.5 ,6, 1, 6);
INSERT INTO grades (grade, grade_course_id, grade_professor_id, grade_student_id)
VALUES (85.75 ,7, 1, 7);
INSERT INTO grades (grade, grade_course_id, grade_professor_id, grade_student_id)
VALUES (0, 8, 1, 8);
INSERT INTO grades (grade, grade_course_id, grade_professor_id, grade_student_id)
VALUES (92.60, 9, 1, 9);
INSERT INTO grades (grade, grade_course_id, grade_professor_id, grade_student_id)
VALUES (99.85, 10, 1, 10);
INSERT INTO grades (grade, grade_course_id, grade_professor_id, grade_student_id)
VALUES (89.20, 11, 2, 1);
INSERT INTO grades (grade, grade_course_id, grade_professor_id, grade_student_id)
VALUES (92.60, 12, 2, 2);
INSERT INTO grades (grade, grade_course_id, grade_professor_id, grade_student_id)
VALUES (86.50, 13, 2, 3);
INSERT INTO grades (grade, grade_course_id, grade_professor_id, grade_student_id)
VALUES (85.50, 14, 2, 7);
INSERT INTO grades (grade, grade_course_id, grade_professor_id, grade_student_id)
VALUES (97.30, 15, 2, 8);
INSERT INTO grades (grade, grade_course_id, grade_professor_id, grade_student_id)
VALUES (77.80, 16, 2, 9);
INSERT INTO grades (grade, grade_course_id, grade_professor_id, grade_student_id)
VALUES (83.50, 17, 2, 10);
INSERT INTO grades (grade, grade_course_id, grade_professor_id, grade_student_id)
VALUES (87.45, 18, 2, 14);
INSERT INTO grades (grade, grade_course_id, grade_professor_id, grade_student_id)
VALUES (94.30, 19,	2, 15);
INSERT INTO grades (grade, grade_course_id, grade_professor_id, grade_student_id)
VALUES (89.75, 20,	2, 16);
INSERT INTO grades (grade, grade_course_id, grade_professor_id, grade_student_id)
VALUES (96, 21, 2, 19);
INSERT INTO grades (grade, grade_course_id, grade_professor_id, grade_student_id)
VALUES (86.5, 22, 2, 20);
INSERT INTO grades (grade, grade_course_id, grade_professor_id, grade_student_id)
VALUES (88.25, 23,	3, 4);
INSERT INTO grades (grade, grade_course_id, grade_professor_id, grade_student_id)
VALUES (78.60, 24, 3, 5);
INSERT INTO grades (grade, grade_course_id, grade_professor_id, grade_student_id)
VALUES (94.30, 25, 3, 6);
INSERT INTO grades (grade, grade_course_id, grade_professor_id, grade_student_id)
VALUES (88, 26, 3, 10);
INSERT INTO grades (grade, grade_course_id, grade_professor_id, grade_student_id)
VALUES (92.60, 27,	3, 11);
INSERT INTO grades (grade, grade_course_id, grade_professor_id, grade_student_id)
VALUES (74.26, 28,	3, 12);
INSERT INTO grades (grade, grade_course_id, grade_professor_id, grade_student_id)
VALUES (85.75, 29,	3, 16);
INSERT INTO grades (grade, grade_course_id, grade_professor_id, grade_student_id)
VALUES (92.60, 30,	3, 17);
INSERT INTO grades (grade, grade_course_id, grade_professor_id, grade_student_id)
VALUES (87.45, 31,	3, 18);
INSERT INTO grades (grade, grade_course_id, grade_professor_id, grade_student_id)
VALUES (92.60, 32,	3, 22);
INSERT INTO grades (grade, grade_course_id, grade_professor_id, grade_student_id)
VALUES (89.20, 33,	4, 24);
INSERT INTO grades (grade, grade_course_id, grade_professor_id, grade_student_id)
VALUES (89.75, 34,	4, 23);
INSERT INTO grades (grade, grade_course_id, grade_professor_id, grade_student_id)
VALUES (86.50, 35,	4, 22);
INSERT INTO grades (grade, grade_course_id, grade_professor_id, grade_student_id)
VALUES (85.50, 36,	4, 21);
INSERT INTO grades (grade, grade_course_id, grade_professor_id, grade_student_id)
VALUES (88.35, 37,	4, 20);
INSERT INTO grades (grade, grade_course_id, grade_professor_id, grade_student_id)
VALUES (92.60, 38,	4, 19);
INSERT INTO grades (grade, grade_course_id, grade_professor_id, grade_student_id)
VALUES (83.50, 39,	4, 18);
INSERT INTO grades (grade, grade_course_id, grade_professor_id, grade_student_id)
VALUES (87.45, 40,	4, 1);
INSERT INTO grades (grade, grade_course_id, grade_professor_id, grade_student_id)
VALUES (92.63, 41, 5, 24);
INSERT INTO grades (grade, grade_course_id, grade_professor_id, grade_student_id)
VALUES (89.75, 42, 5, 21);
INSERT INTO grades (grade, grade_course_id, grade_professor_id, grade_student_id)
VALUES (92.60, 43, 5, 23);
INSERT INTO grades (grade, grade_course_id, grade_professor_id, grade_student_id)
VALUES (86.5, 44, 5, 15);
INSERT INTO grades (grade, grade_course_id, grade_professor_id, grade_student_id)
VALUES (87.45, 45, 5, 12);
INSERT INTO grades (grade, grade_course_id, grade_professor_id, grade_student_id)
VALUES (92.60, 46, 5, 13);
INSERT INTO grades (grade, grade_course_id, grade_professor_id, grade_student_id)
VALUES (88.35, 47, 5, 10);
INSERT INTO grades (grade, grade_course_id, grade_professor_id, grade_student_id)
VALUES (92.60, 48, 5, 17);
INSERT INTO grades (grade, grade_course_id, grade_professor_id, grade_student_id)
VALUES (89.75, 49, 5, 9);
INSERT INTO grades (grade, grade_course_id, grade_professor_id, grade_student_id)
VALUES (92.63, 50, 5, 6);
INSERT INTO grades (grade, grade_course_id, grade_professor_id, grade_student_id)
VALUES (87.45, 51, 5, 5);
INSERT INTO grades (grade, grade_course_id, grade_professor_id, grade_student_id)
VALUES (88.35, 52, 5, 17);
INSERT INTO grades (grade, grade_course_id, grade_professor_id, grade_student_id)
VALUES (92.60, 53, 5, 22);
INSERT INTO grades (grade, grade_course_id, grade_professor_id, grade_student_id)
VALUES (89.75, 54, 5, 11);
