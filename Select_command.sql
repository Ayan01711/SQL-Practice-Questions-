use google;

-- select all columns from employees table
select * from 
employees;

-- select specific columns from employees table
select name, email, department, salary 
from employees;

-- select employees from the operations department with where clause
select name, email, department, salary 
from employees 
where department = 'operations';