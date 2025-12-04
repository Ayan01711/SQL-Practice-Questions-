use record;
-- Inner Join
select * from student s 
inner join course c
on s.course=c.name;


-- Right Join
select * from student s 
right join course c
on s.course=c.name;


-- Left Join
select * from student s 
Left join course c
on s.course=c.name;


-- Full Outer Join
select * from student s 
Left join course c
on s.course=c.name

union

select * from student s 
Right join course c
on s.course=c.name;

-- Cross join 
select * from student s
cross join course c;


SELECT c.name AS Course, COUNT(s.id) AS total_student
FROM course c
LEFT JOIN student s 
    ON s.course = c.name
GROUP BY c.name
ORDER BY total_student DESC;



