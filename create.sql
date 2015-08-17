CREATE DATABASE TWDemo DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;

USE TWDemo;

CREATE TABLE student(
 id INT(4) NOT NULL PRIMARY KEY auto_increment,
 name VARCHAR(20) NOT NULL,
 sex VARCHAR(4) NOT NULL ,
 class_id INT(4) NOT NULL
);

CREATE TABLE class(
 id INT(4) NOT NULL PRIMARY KEY auto_increment,
 name VARCHAR(20) not null
);

CREATE TABLE subject(
 id INT(4) NOT NULL PRIMARY KEY auto_increment,
 name VARCHAR(20) NOT NULL
);

CREATE TABLE student_subject(
  id INT(4) NOT NULL PRIMARY KEY auto_increment,
  student_id INT(4) NOT NULL,
  subject_id INT(4) NOT NULL
);

ALTER TABLE student ADD CONSTRAINT FK_student_class FOREIGN KEY (class_id) REFERENCES class (id)
ON DELETE restrict ON UPDATE restrict;

ALTER TABLE student_subject ADD CONSTRAINT FK_student_subject_subject FOREIGN KEY (subject_id) REFERENCES subject (id)
ON DELETE restrict ON UPDATE restrict;

ALTER TABLE student_subject ADD CONSTRAINT FK_student_subject_student FOREIGN KEY (student_id) REFERENCES student (id)
ON DELETE restrict ON UPDATE restrict;
