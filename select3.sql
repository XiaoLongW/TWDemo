SELECT class.name AS class_name,SUM(student.sex="boy") AS boys,sum(student.sex="girl") AS girls FROM student,class WHERE class_id=class.id GROUP BY  class.id;
