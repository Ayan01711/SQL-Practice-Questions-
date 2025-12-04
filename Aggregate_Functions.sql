
-- AGGREGATE FUNCTIONS
-- Aggregate functions perform a calculation on a set of values and return a single value.
-- Common aggregate functions are COUNT, SUM, AVG, MAX, MIN and Group_concat

-- COUNT() function
-- Query fetch total number of employees from Employees table
select count(id) as total_emp from Employees; -- count function

-- SUM() function
-- Query fetch total salary of all employees from Employees table
select sum(salary) as Total_Salary from Employees; -- sum function

-- AVG() function
-- Query fetch average salary of all employees from Employees table
select avg(salary) as avg_salary from Employees; -- avg function

-- MAX() function
-- Query fetch maximum salary from Employees table
select max(salary) as max_Salary from Employees; -- max function

-- MIN() function
-- Query fetch minimum salary from Employees table
select min(salary) as min_Salary from Employees; -- min function

-- GROUP_CONCAT() function
-- Query fetch all employee names in a single row from Employees table
select group_concat(name) as all_employee_names from Employees; -- group_concat function