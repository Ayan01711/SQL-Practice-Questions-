-- ALTER
-- Alter is an ddl command used for modifying or updating the structure of a schema/table. 
-- we can perform operations such as adding, modifying, or dropping columns in a table.
-- As well as changing name and data type of a column.


use google;

-- Adding a new column
alter table employees
add column feedback varchar(255) default 'No feedback';

-- Renaming an existing column
alter table employees
rename column feedback to emp_feedback;

-- Changing the data type and name of an existing column
alter table employees
change column emp_feedback performance_feedback varchar(500);

-- Modifying existing column to a different data type
alter table employees
modify performance_feedback text;


-- Dropping an existing column
-- if we dont mention the column name, it will not be dropped insted of it the entire data of employees table will be dropped
alter table employees
drop column performance_feedback;

-- used for dropping the entire table
        -- drop table employees;