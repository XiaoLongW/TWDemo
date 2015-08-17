delimiter //
create procedure insertClass()
begin
declare num int;
set num=1;
while num <= 50 do
insert into class(name) values(concat("class-", num));
set num=num+1;
end while;
end
//

delimiter //
create procedure insertStudent()
begin
declare num int;
set num=1;
while num <= 50 do
insert into class(name) values(concat("class-", num));
set num=num+1;
end while;
end
//

delimiter //
create procedure insertTimetable()
begin
declare num int;
set num=1;
while num <= 50 do
insert into class(name) values(concat("class-", num));
set num=num+1;
end while;
end
//


delimiter //
create procedure insertTimetable()
begin
declare num int;
set num=1;
while num <= 50 do
insert into class(name) values(concat("class-", num));
set num=num+1;
end while;
end
//
