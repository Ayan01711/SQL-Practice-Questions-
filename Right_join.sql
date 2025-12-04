drop database if exists record;
create database if not exists record;
use record;

create table if not exists student(
	ID int primary key auto_increment,
    name varchar(100) not null,
    roll_no int  not null,
    course varchar(50));
    
create table if not exists course(
	id int primary key auto_increment,
    name varchar(50) not null unique);
    
insert into student ( name,roll_no,course)
values('Ayan',1,'CS'),
('Ayaz',2,'NT'),
('Sakshi',3,'CS');

insert into student (name,roll_no)
values ('Sneha',4),
('Fardeen',5);

insert into course (name)
values('CS'),
('NT');

select * from student;
select * from course;

select * from course c
right join student s
on s.course=c.name
where s.course not in ('NT')
order by s.roll_no asc ;



select * from course c 
right join student s
on s.course=c.name
-- where s.course in ('NT')
order by s.id asc;

-- we can use this also but this is to legthy so we use alies as we used in upper queries
select * from  course
right join student
on student.id=course.id
-- where student.course in ('CS')
order by student.id asc;

select * from student;
select * from course;