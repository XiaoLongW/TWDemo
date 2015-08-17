CREATE VIEW student_class AS SELECT name AS studen_name,(
	SELECT group_concat(name) FROM student_subject
	JOIN subject ON student_subject.subject_id = subject.id
	WHERE student_subject.student_id = student.id
) AS subject
FROM student LIMIT 20,10;

SELECT * FROM student_class;
