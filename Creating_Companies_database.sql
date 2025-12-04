-- Drop the database if it exists
drop database if exists google;

-- Create the database if it doesn't exist 
create database if not exists google;
use google;

-- Create the Employees table if it doesn't exist
create table if not exists Employees (
    ID int primary key auto_increment,
    Name varchar(100) not null,
    Age int not null,
    Email varchar(100) not null unique,
    Department varchar(100) not null,
    city varchar(100) not null,
    Salary bigint not null
);

-- Insert sample data into the Employees table
insert into Employees (Name, Age, Email, Department, city, Salary) values
('Ayan', 30, 'Ayan@example.com', 'Operations', 'Pune', 80000),
('Ayaz', 25, 'Ayaz@example.com', 'Testing', 'Delhi', 60000),
('Sakshi', 35, 'Sakshi@example.com', 'Operations', 'Pune', 70000),
('Farah', 28, 'Farah@example.com', 'Development', 'Mumbai', 90000),
('John', 32, 'John@example.com', 'HR', 'Bangalore', 75000),
('Dev', 29, 'Dev@example.com', 'Testing', 'Hyderabad', 65000),
('Adnan', 26, 'Adnan@example.com', 'Development', 'Mumbai', 70000),
('Sneha', 27, 'Sneha@example.com', 'Testing', 'Delhi', 60000),
('Sohail', 30, 'Sohail@example.com', 'Operations', 'Mumbai', 80000),
('Imran', 31, 'Imran@example.com', 'Sales', 'Chennai', 72000),
('Ravi', 34, 'Ravi@example.com', 'Finance', 'Pune', 95000),
('Zara', 24, 'Zara@example.com', 'Development', 'Bangalore', 68000),
('Meera', 29, 'Meera@example.com', 'HR', 'Hyderabad', 72000),
('Arjun', 33, 'Arjun@example.com', 'Sales', 'Delhi', 88000),
('Fatima', 27, 'Fatima@example.com', 'Operations', 'Mumbai', 77000),
('Nikhil', 28, 'Nikhil@example.com', 'Finance', 'Bangalore', 82000),
('Sameer', 26, 'Sameer@example.com', 'Testing', 'Chennai', 64000),
('Priya', 30, 'Priya@example.com', 'Sales', 'Pune', 86000),
('Rahman', 35, 'Rahman@example.com', 'Finance', 'Delhi', 97000),
('Anjali', 25, 'Anjali@example.com', 'HR', 'Mumbai', 69000),
('Faisal', 29, 'Faisal@example.com', 'Development', 'Hyderabad', 88000),
('Roshni', 31, 'Roshni@example.com', 'Operations', 'Bangalore', 76000),
('Irfan', 27, 'Irfan@example.com', 'Sales', 'Delhi', 81000),
('Lakshmi', 32, 'Lakshmi@example.com', 'Finance', 'Chennai', 93000);

-- Query the Employees table
select * from Employees;

select * from Employees 
where name in('Ayan Pathan', 'Sohail Pathan', 'Sakshi', 'Nikhil');

-- Disable safe updates
set sql_safe_updates = 0;

-- update the Salary of an employee
update Employees 
set Salary = 85000 
where Name = 'Ayan';

update Employees
set Salary = 120000
where Email = 'Sohail@example.com';

-- update the Age of an employee
update Employees set Age=23 where Name = 'Ayan';
update Employees set Age=22 where Name = 'Sakshi';

-- update the city of an employee
update Employees set city = 'Pune' where Email = 'Sohail@example.com';
update Employees set city = 'Pune' where Email = 'Nikhil@example.com';

-- update the Department of an employee
update Employees set Department = 'Testing' where Email = 'Nikhil@example.com';
update Employees set Department = 'Finance' where Email = 'Sneha@example.com';

-- update the Email of an employee
update Employees set Email = 'pathanayan01711@gmail.com' where Email ='Ayan@example.com';
update Employees set Email = 'farah@gmail.com' where Email ='Farah@example.com';

-- update the Name of an employee
update Employees set Name = 'Ayan Pathan' where Email ='pathanayan01711@gmail.com';
update Employees set Name = 'Sohail Pathan' where Email = 'Sohail@example.com';


select * from Employees 
where name in('Ayan Pathan', 'Sohail Pathan', 'Sakshi', 'Nikhil');

-- delete an employee 
-- delete from Employees where Name = 'Ayaz';
delete from employees where Email = 'Sneha@example.com';

