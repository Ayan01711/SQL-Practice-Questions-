use google;


-- syntax for updating a table
        -- update table_name
        -- set column_name = new_value
        -- where condition;

-- update the Department of an employee
update Employees set Department = 'Testing' where Email = 'Nikhil@example.com';
update Employees set Department = 'Finance' where Email = 'Sneha@example.com';

-- update the Salary of an employee
update Employees set Salary = 92000 where Email= 'Pathanayan01711@gmail.com';
update Employees set Salary = 25000 where Department= 'Sales';

-- update the city of sales employees
update employees set city = 'Beed' where Department = 'Sales';


-- syntax for deleting from a table
            -- delete from table_name
            -- where condition;

-- deleting an employee who is no longer with the company
delete from employees where email = 'faisal@example.com';
delete from employees where email ='irfan@example.com';
delete from employees where name ='imran';

-- deleting all employees from the Sales department
delete from employees where Department='Sales';