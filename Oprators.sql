use google;

-- OPERATORS
-- Operators are special symbols or keywords that are used to perform operations on data/values available in schemas/tables.
-- In SQL, operators are used to manipulate data and perform various tasks such as filtering, sorting, and calculations.
-- Some common types of operators in SQL such as arithmetic operators, comparison operators, logical operators, and bitwise operators.
-- Operators are used with where clause to filter records based on specific conditions.


-- ARTHEMATIC OPERATORS
-- Arthematic operators are used to perform mathematical operations on columns or fields which are having numeric data types in a database table.
-- The common arithmetic operators are + (Addition), - (Subtraction), * (Multiplication), / (Division), % (Modulus)


-- Query fetch all employees whose age is becoming 17 after subtracting 1 from their current age.
select * from Employees
where age-1 = 17; -- subtraction operator

-- Query fetch all employees whose age is becoming 26 after adding 2 to their current age.
select * from Employees
where age+2 = 26; -- addition operator

-- Query fetch all employees whose age is becoming 34 after multiplying their current age by 2.
select * from Employees     
where age*2 = 34; -- multiplication operator

-- Query fetch all employees whose age is becoming 14 after dividing their current age by 2.
select * from Employees
where age/2 = 14; -- division operator

-- Query fetch all employees whose age is becoming 0 after taking modulus of their current age by 2.
select * from Employees
where age%2 = 0; -- modulus operator



-- COMPARISON OPERATORS
-- Comparison operators are used to compare two values and retrive result based on that condition.
-- The common comparison operators are = (Equal to), <> or != (Not equal to), > (Greater than), < (Less than), >= (Greater than or equal to), <= (Less than or equal to)
-- Comparison operators are used with where clause to filter records based on specific conditions.


-- EQUAL TO (=) operator
-- Query fetch all employees whose age is equal to 23.
select * from Employees
where age = 23; -- equal to operator

-- NOT EQUAL TO (<> or !=) operator
-- Query fetch all employees whose age is not equal to 23.
select * from employees
where age <> 23; -- not equal to operator

-- LESS THAN (<) operator
-- Query fetch all employees whose age is less than 30.
select * from Employees
where age < 30; -- less than operator

-- GREATER THAN (>) operator
-- Query fetch all employees whose age is greater than 25.
select * from Employees
where age > 25; -- greater than operator

-- LESS THAN OR EQUAL TO (<=) operator
-- Query fetch all employees whose age is less than or equal to 30.
select * from Employees
where age <= 30; -- less than or equal to operator

-- GREATER THAN OR EQUAL TO (>=) operator
-- Query fetch all employees whose age is greater than or equal to 25.
select * from Employees
where age >= 25; -- greater than or equal to operator



-- LOGICAL OPERATORS
-- Logical operators are used to combine multiple conditions in a SQL query and retrieve results based on those conditions.

-- AND operator
-- Query fetch all employees whose age is greater than 23 and salary is greater than 50000.
-- If both conditions are true then only record will be fetched.
select * from Employees
where age > 23 and salary = 60000; -- LOGICAL AND operator

-- OR operator
-- Query fetch all employees whose age is greater than 30 or salary is greater than 50000.
-- If any one condition is true then record will be fetched.
select * from Employees
where age > 30 or salary >= 50000; -- LOGICAL OR operator


-- NOT operator
-- Query fetch all employees whose age is not greater than 25.
-- If the condition is false then only record will be fetched.
select * from Employees
where not age > 25; -- LOGICAL NOT operator


-- SPECIAL OPERATORS
-- Special operators are used to perform specific operations in SQL queries.
-- The common special operators are BETWEEN, IN, LIKE, IS NULL, and IS NOT NULL, wildcard operators.
-- Special operators are used with where clause to filter records based on specific conditions.
-- They are used to simplify complex queries and make them more readable.
-- Covered in Special_Operators.sql file.

