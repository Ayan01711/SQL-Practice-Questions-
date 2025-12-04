
-- RENAME
--  rename command used to cahange the name of existing database objects such as table,columns, index and constraints
--  rename comes under DDL commands

use google;

-- rename table users to insta_users
rename table users to insta_users;


-- the column comes under the schema thats why we are using alter command
-- to renaming the column name to usr_name
alter table insta_users
rename column name to usr_name;
