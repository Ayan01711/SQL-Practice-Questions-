use test;

-- second highest salary using Join, Order by, limit and offset
select e.id, e.name ,e.age , e.email , e.DepartmentID, e.salary as Second_Highest_Salary
, d.Name as DepartmentName, d.ID as Dept_ID
from Employees e
join Departments d
on e.DepartmentID = d.ID
order by e.salary desc
limit 1 offset 1;

-- second heighest salary using join and subquery
select e.id, e.name ,e.age , e.email , e.DepartmentID, e.salary as Second_Highest_Salary
, d.Name as DepartmentName, d.ID as Dept_ID
from Employees e
join Departments d
on e.DepartmentID = d.ID
where e.Salary < (select max(Salary) from Employees limit 1 ) -- subquery to find second highest salary
order by e.salary desc
limit 1 ;

-- Get all employees salary in the Operations department from google high to low
use google;

select * from Employees
where department = 'operations'
order by Salary desc
limit 20;
