-- Count employees by department.

-- Find max salary, min salary, avg salary.

-- Find department-wise total salary.

-- Find second highest salary.

-- Handle NULL values.

-- That’s 90% of what you’ll face.



use google;

-- Query to find the number of employees in each department
select department, count(*) as No_of_Employees
from employees
group by department
order by No_of_Employees desc;

-- Query to find the number of employees in each city
select city, count(*) as No_of_Employees
from employees
group by city
order by No_of_Employees desc;

-- Query to find the highest paid employee in each department
select department, max(salary) as Highest_Salary
from employees
group by department
order by Highest_Salary desc;


-- Query to find the lowest paid employee in each department
select department, min(salary) as Lowest_Salary
from employees
group by department
order by Lowest_Salary asc;


-- Query to find the average salary in each department
select department, avg(salary) as Average_Salary
from employees
group by department
order by Average_Salary desc;


-- Query to find the second highest paid employee in each department
select department, max(salary) as Second_Highest_Salary
from employees
where salary < (select max(salary) from employees)
group by department;


-- Query to find sum of salaries in each department
select department, sum(salary) as Total_Salary
from employees
group by department
order by Total_Salary desc;


--  query to find sum of salary in each department
select department, sum(salary) as Total_Employees
from employees
group by department
order by Total_Employees desc;


-- Query to find sum salaries in each City how we are paying
select distinct city, sum(salary) as Total_Salary
from employees
group by city
order by Total_Salary desc;



-- Query to find the nth highest paid employee in each department
-- this is querry to find the nth highest salary
select department, max(salary) as Nth_Highest_Salary
from employees
group by department
order by  Nth_Highest_Salary desc
limit 8, 1; -- this will give the 9th highest salary 8 is used  for skipping the top 8 and getting the 9th and 1 is used for getting the 1st row on


-- Query to find the second highest salary
select max(salary) as Second_Highest_Salary
from employees
order by Second_Highest_Salary desc
limit 1 offset 1;

-- Query to find the second highest salary
select name, max(salary) as Second_Highest_Salary
from employees
where salary < (select max(salary) from employees)
group by name
order by Second_Highest_Salary desc
limit 1;


-- Query to find the second highest salary from each department using subquery and alias
select department, max(salary) as Second_Highest_Salary
from employees e1
where salary < (select max(salary) from employees e2 where e1.department = e2.department)
group by department;


-- Query to find the records where are null values in any filed
select * from employees
where name is null or email is null or department is null or age is null or salary is null;


