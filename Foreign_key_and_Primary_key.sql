create database if not exists test;
use test;
drop table if exists Students;
drop table if exists Courses;

-- PRIMARY KEY
-- primary key is a unique identifier for a record in a table it ensures that the values in the particular column must be unique and not null.
-- primary key is used as reference for foreign keys in other tables.


-- FOREIGN KEY
-- Foreign key is a field which refers to the primary key of another table.
-- Foreign key is works as a relationship between two tables.

create table if not exists Students(
    Roll_No int primary key auto_increment,
    Name varchar(50) not null
);


--  created table Courses with constrains and foreign key for refrence with table 
create table if not exists Courses(
    ID int primary key auto_increment,
    Name varchar(100) not null unique,
    Teacher varchar(100) not null,
    Student_Roll_No int default null,
    foreign key (Student_Roll_No) references Students(Roll_No)
);


alter table Students
add column Course_ID int,
add foreign key (Course_ID) references Courses(ID);


insert into Courses (Name, Teacher) values
('Computer Science', 'Mrs. Mahamuni'),
('Network Technology', 'Ms. Bhosle'),
('Software Engineering', 'Mr. Jadhav');


insert into Students (Name, Course_ID) values
('Ayan', 1),
('Asef', 2),
('Sakshi', 1),
('Farha',3);


update Courses set Student_Roll_No = 1 where ID = 1;
update Courses set Student_Roll_No = 2 where ID = 2;
update Courses set Student_Roll_No = 3 where ID = 1;
update Courses set Student_Roll_No = 4 where ID = 3;

select s.Roll_No as Roll_No, s.Name as Student_Name, c.Name as Course_Name, c.Teacher
from Courses c
left join Students s on c.ID = s.Course_ID
order by s.Roll_No;

select * from Courses;
select * from Students;