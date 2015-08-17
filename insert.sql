DELIMITER //
CREATE PROCEDURE insertClass()
BEGIN
DECLARE num int;
SET num=1;
WHILE num <= 5 do
INSERT INTO class(name) VALUES(concat("班级--", num));
SET num=num+1;
END while;
END //
DELIMITER ;

CALL insertClass();

DELIMITER //
CREATE PROCEDURE insertSubject()
BEGIN
DECLARE num int;
SET num=1;
WHILE num <= 15 do
INSERT INTO subject(name) VALUES(concat("课程--", num));
SET num=num+1;
END while;
END //
DELIMITER ;

CALL insertSubject();

DELIMITER //
CREATE PROCEDURE insertStudent()
BEGIN
DECLARE num int;
SET num=1;
WHILE num <= 50 do
INSERT INTO student(name,sex,class_id) VALUES(concat("学生--", num),IF(num%2=0,"boy","girl"),num%5+1);
SET num=num+1;
END while;
END //
DELIMITER ;

CALL insertStudent();

DELIMITER //
CREATE PROCEDURE insertStudentSubject()
BEGIN
DECLARE num int;
DECLARE num1 int;
SET num=1;
WHILE num <= 50 do
SET num1=1;
WHILE num1 <= 3 do
INSERT INTO student_subject(student_id,subject_id) VALUES(num,(num1+num-1)%15+1);
SET num1=num1+1;
END WHILE;
SET num=num+1;
END while;
END //
DELIMITER ;

CALL insertStudentSubject();
