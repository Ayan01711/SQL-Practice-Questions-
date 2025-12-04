
-- GROUP BY and HAVING Clause
-- It is used to group rows that have the same values into and sumarize the result in single row.
-- The HAVING clause is used to filter records that work on summarized group data.
-- Having clause is used with group by clause and works on aggregated data.
-- it filter aggregated data on given condition.
use google;
-- GROUP BY Clause
select department, sum(salary) as total_pay from Employees
group by department; -- This will give total salary of all employees grouped by department


-- HAVING Clause
select department, sum(salary) as total_pay from Employees
group by department
having total_pay < 80000;



