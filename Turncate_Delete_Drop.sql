
use google;

-- TRUNCATE
-- TRUNCATE command is used to delete entire rows/records of particular table
-- TRUNCATE is a DDL command and it is faster than DELETE command because it does not generate individual row delete statements
-- TRUNCATE Deletes all rows in a table but dont affect the structure of the table
-- TRUNCATE is not transactional and cannot be rolled back

-- Example
TRUNCATE TABLE users;

-- DELETE
-- DELETE command is used to delete particular rows/records from a table
-- Delete command is written with followed conditions
-- Which records matches this particular condition those records will be deleted
-- DELETE is also a DDL command

-- Example
Delete from users 
where department = 'testing';

-- DROP
-- DROP command is used to delete the entire table with followed table name
-- When we use DROP command it removes the existance of that table
-- DROP is also a DDL command

-- Example
DROP TABLE users;
