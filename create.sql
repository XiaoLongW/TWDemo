CREATE DATABASE TWDemo DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;

USE TWDemo;

CREATE TABLE student(
 id int(4) not null primary key auto_increment,
 name varchar(20) not null,
 sex varchar(4) not null ,
 class_id int(4) not null,
 timetable_id int(4) not null,
 FOREIGN KEY (class_id) REFERENCES class(id),
 UNIQUE (timetable_id)
);

CREATE TABLE class(
 id int(4) not null primary key auto_increment,
 name char(20) not null
);

CREATE TABLE timetable(
 id int(4) not null primary key auto_increment,
 student_id int(4) not null
);

CREATE TABLE subject(
 id int(4) not null primary key auto_increment,
 name char(20) not null
);

CREATE TABLE subject_timetable(
  id int(4) not null primary key auto_increment,
  subject_id int(4) not null,
  timetable_id int(4) not null,
  FOREIGN KEY (subject_id) REFERENCES subject(id),
  FOREIGN KEY (timetable_id) REFERENCES timetable(id)
);

-- CREATE TABLE student_subject(
--   id int(4) not null primary key auto_increment,
--   subject_id int(4) not null,
--   student_id int(4) not null,
--   FOREIGN KEY (subject_id) REFERENCES subject(id),
--   FOREIGN KEY (student_id) REFERENCES student(id)
-- );
