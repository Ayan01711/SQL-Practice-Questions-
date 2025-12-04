use google;

create table students (
id int primary key auto_increment,
name varchar(50) not null,
marks int,
collage varchar(100) default "Collage of Computer Science and Information Technology"
);

insert into students (name , marks)
values("dev",23),
("aakash",38),
("aniket",55),
("akhlakh",35);

select * from students;

delete from students
where marks <= 35;

select * from students;
