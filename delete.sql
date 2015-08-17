-- DELETE expect FROM student expect INNER JOIN (SELECT * FROM student LIMIT 30,10) result on expect.id = result.id;
 -- DELETE student,student_subject FROM student LEFT JOIN student_subject ON student.id=student_subject.student_id  LIMIT 30,10;
DELETE FROM student LIMIT 30,10;
