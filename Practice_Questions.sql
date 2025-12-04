
-- Practice Quesitions for Having, Group by clouse and aggregate functions 

use google;
-- 1. Write a query to find total number of employees in each city.

select distinct city, count(*) as Total_Employees from Employees
group by city;


-- 2. Write a query to find the maximum salary of employees in each city in descending order.

select city, max(salary) as Maximum_Salary from Employees
group by city 
order by Maximum_Salary desc;


-- 3. Write a query to display dipartment names along with total count of  employees  in each department 
-- and sort result by the total_no_of _employees in decending order

select department, count(*) as Total from Employees
group by department
order by total desc;


-- 4. Write a query to list departments  where avg salary is greate than 60000 
-- also display department names and avrage salary

select department, avg(salary) as Avg_Salary from employees
group by department
having Avg_Salary > 60000;