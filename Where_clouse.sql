use google;

-- WHERE
-- Where clause is used to filter records based on specific conditions.
-- Used along with DDL and DML commands.

-- select all columns from employees table using where clause and condition
select * from employees
where age >= 30;

-- update employees table to set salary for employees aged 50 and above using where clause and condition
update employees set salary=90000 
where age >= 50;

-- delete employees from employees table where age is 60 and above using where clause and condition
delete from employees 
where age >= 60;
