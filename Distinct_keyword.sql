use google;


-- DISTINCT
-- Distinct is an Keyword used for fetch unique values/data from a column
-- Distinct also retrieves unique values/data from combinations of columns
-- Distinct is used with SELECT statement

-- Example for fetching unique values from a single column
SELECT DISTINCT department 
FROM users;

-- Example for fetching unique values from multiple columns
SELECT DISTINCT department, salary 
FROM users;
