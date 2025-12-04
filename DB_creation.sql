

drop table if exists users;
drop table if exists posts;

-- creating database
create database if not exists test;
use test;

-- creating users table if not exists
create table if not exists users (
userID int primary key auto_increment,
user_name varchar (50),
email varchar (100));

-- creating posts table if not exists
create table if not exists posts (
postID int primary key auto_increment,
userID int,
post_captions varchar (200));

-- inserting sample data into users table
insert into users (user_name , email)
values ("Ayan", "ayan@example.com"),
("Asef", "Asef@example.com"),
("Sakshi" , "Sakshi@example.com");

-- inserting sample data into posts table
insert into posts (userID, post_captions)
values (1,"This is Ayan's Post"),
(2, "This is Asef's post"),
(3, "This is Sakshi's Post");

-- displaying users and their posts using JOIN and aliasing
select distinct u.userID as ID, u.user_name as Name , email as UserName ,p.postID as Post_No, p.post_captions as Captions -- Selecting user and post details
from users u -- User alias
join posts p -- Post alias
on u.userID = p.userID -- Joining condition 
order by u.userID, u.user_name , u.email; -- ordering the results

-- displaying all users
select * from users;

-- displaying all posts
select * from posts;

-- deleting specific posts
delete from posts
where postID in (4, 5, 6);
