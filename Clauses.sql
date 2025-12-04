
-- CLAUSES
-- Clauses in sql are condition which helps us to make query more specific and decide what data to be fetched 
-- SQL clauses such as Where , Having , Group by , Order by and Limit clause 


select * from employees
where salary >= 50000; -- Where Clause 

select * from employees
where salary >= 50000 -- Where Clause
limit 5; -- Limit Clause 

select * from employees
where salary >= 50000 -- Where Clause
order by salary desc -- Order By Clause (ASC/DESC)
limit 2; -- Limit Clause



-- Group By Clause
select Department, count(ID) as total from employees -- Aggregate function count for counting total employees 
group by department --  grouping employees as per department how much employees are working in which department 
order by total desc; -- ordering in descending order so we can get list from heiigh to low 




select Department, sum(salary) as total_pay from employees
group by Department 
order by total_pay desc;


-- Having Clause
select Department, avg(salary) as avgsal from employees
group by Department
having avgsal > 100000; -- Filtering groups with avgsal greater than 100000

