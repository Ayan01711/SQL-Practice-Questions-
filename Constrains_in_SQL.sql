-- Constrains in SQL

-- Constraints are rules or conditions enforced on data columns on a table. 
-- These are used to limit the type of data that can go into a table. 
-- constraints ensure some conditions must be satisfied with the data in the table. 
-- This ensures the accuracy and reliability of the data in the database.

--  there are several types of constraints that can be applied to a table, such as:

-- unique,
-- primary key,
-- foreign key,
-- check,
-- not null
-- default

create database if not exists test;
use test;
drop table if exists Employees;
drop table if exists Departments;

-- creating Departments table for foreign key reference
create table if not exists Departments (
    ID int primary key auto_increment, -- primary key constraint ensures that each department has a unique ID
    Name varchar(100) not null unique -- not null and unique constraint ensures that the Name field cannot be empty and must be unique
); 

    -- end of Departments table creation


-- insert some sample departments into Departments table
insert into Departments (Name) values
('Operations'),
('Development'),
('Sales');


-- creating Employees table with various constraints
create table if not exists Employees (
    ID int primary key auto_increment, -- primary key constraint ensures that each employee has a unique ID
    Name varchar(100) not null, -- not null constraint ensures that the Name field cannot be empty
    Age int check (Age >= 18), -- check constraint ensures that the Age must be 18 or older
    Email varchar(100) unique, -- unique constraint ensures that the Email must be unique
    DepartmentID int,
    Salary decimal(10, 2) default 50000.00, -- default constrain ensures if there is no value for salary there will be default value is 50000
    foreign key (DepartmentID) references Departments(ID) -- foreign key constrain makes refrence between table department and employees
); 

    -- end of Employees table creation


-- insert some sample employees into Employees table
insert into Employees (Name, Age, Email, DepartmentID, Salary) 
values ('Ayan', 30, 'ayan@example.com', 1, 60000.00), -- Operations
       ('Asef', 25, 'asef@example.com', 2, 55000.00), -- Development
       ('Sakshi', 35, 'sakshi@example.com', 1, 70000.00); -- Operations

-- inserting for check default constraint
insert into Employees (Name, Age, Email, DepartmentID)
values ('Ayaz', 28, 'Ayaz@example.com', 1);

-- Join Employees and Departments
select e.*, d.Name as DepartmentName, d.ID as Dept_ID 
from Employees e -- Employee alias
join Departments d  -- Department alias
on e.DepartmentID = d.ID -- DepartmentID foreign key reference
order by e.ID; -- Ordering by Employee ID



-- querry for second highest salary 

-- second highest salary using Join, Order by, limit and offset
-- select e.id, e.name ,e.age , e.email , e.DepartmentID, e.salary as Second_Highest_Salary
-- , d.Name as DepartmentName, d.ID as Dept_ID
-- from Employees e
-- join Departments d
-- on e.DepartmentID = d.ID
-- order by e.salary desc
-- limit 1 offset 1;