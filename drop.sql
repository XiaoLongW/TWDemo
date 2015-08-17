ALTER TABLE student DROP FOREIGN KEY FK_student_class;
ALTER TABLE student_subject DROP FOREIGN KEY FK_student_subject_subject;
ALTER TABLE student_subject DROP FOREIGN KEY FK_student_subject_student;


DROP TABLE  IF EXISTS class;

DROP TABLE  IF EXISTS student;

DROP TABLE  IF EXISTS student_subject;

DROP TABLE  IF EXISTS subject;

USE mysql;

DROP DATABASE  IF EXISTS TWDemo;
