SELECT class.name AS class_name,COUNT(student.id) AS amount FROM student,class WHERE class_id=class.id group by  class.id;
