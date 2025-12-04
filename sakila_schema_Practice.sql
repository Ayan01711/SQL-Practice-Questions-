-- use database sakila
use sakila;


-- 1. Number of Films by Language
-- SELECT * FROM language;
-- SELECT * FROM film;
SELECT l.language_id, l.name, COUNT(f.film_id) AS total_films FROM film f
JOIN language l
ON l.language_id = f.language_id
GROUP BY l.language_id, l.name;



-- 2. Top Paying Customers
-- select * from customer;
-- select * from payment;
select c.customer_id, c.first_name , c.last_name, sum(p.amount) as total_pay from customer c
left join payment p
on c.customer_id = p.customer_id
group by c.customer_id
order by total_pay desc
limit 5;



-- 3. Films by category
-- SELECT * FROM category;
-- SELECT * FROM film_category;
-- SELECT * FROM film ;
select c.name, count(f.film_id) as total from film f
join film_category fc on f.film_id = fc.film_id
join category c on fc.category_id = c.category_id
group by c.name 
order by c.name asc 
limit 5;



-- 4.Revenue by Store
-- SELECT * FROM payment;
-- SELECT * FROM staff;
-- SELECT * FROM store;
select st.store_id , sum(p.amount) as total_rev from payment p
join staff sf on sf.staff_id = p.staff_id
join store st on st.store_id = sf.store_id
group by store_id
order by total_rev desc;



-- 5.Which Staff Processed Most Rentals
-- select * from rental;
-- select * from staff;
select s.staff_id, s.first_name, s.last_name, count(r.rental_id) as total_rentals from staff s
join rental r on r.staff_id = s.staff_id
group by s.staff_id
order by total_rentals desc;



-- 6.Total Rentals per Store
-- SELECT * FROM staff;
-- SELECT * FROM store;
-- select * from rental;
select st.store_id as Store, count(r.rental_id) as Total_rentals from rental r
join staff sf on sf.staff_id=r.staff_id
join store st on st.store_id=sf.store_id
group by Store
order by Total_rentals desc;




-- 7.Customers With Total No of Rentals
-- select * from customer;
-- select * from rental;
SELECT c.customer_id AS ID,
       c.first_name AS First_name,
       c.last_name AS Last_name,
       count(r.rental_id) as total_rental
FROM customer c
LEFT JOIN rental r ON c.customer_id = r.customer_id
WHERE c.customer_id in (select r.customer_id from rental r)
group by ID
ORDER BY total_rental desc;


-- 8.Customers Renting Specific (ACTION) Category
-- select * from customer;
-- select * from rental;
-- select * from inventory;
-- select * from film_category;
-- select * from category;
select c.customer_id as Customer , c.first_name as First, c.last_name as Last from customer c
join rental r on r.customer_id=c.customer_id
join inventory i on r.inventory_id=i.inventory_id
join film_category fc on i.film_id=fc.film_id
join category ca on fc.category_id=ca.category_id
where ca.name in ('Action')
group by Customer, First, Last
order by Customer asc;



-- 9.Average Payment per Customer
--  Tables: customer, payment
--  Question: Calculate the average payment made by each customer
-- select * from customer;
-- select * from payment;

select c.customer_id as ID , c.first_name as First , c.last_name as Last, avg(p.amount) as Avg_Pay from customer c
left join payment p on p.customer_id=c.customer_id
group by ID,First,Last
order by Avg_Pay desc;



-- 10.Films Never Rented
-- select * from film;
-- select * from  inventory;
-- select * from rental;
select f.film_id as ID,f.title as Film_Name from film f
left join inventory i on f.film_id = i.film_id
left join rental r on i.inventory_id=r.inventory_id
where r.rental_id is null
group by f.film_id 
-- having count(r.rental_id)=0
order by f.title;



-- 11.Revenue by Film Category
-- select * from film_category;
-- select * from category;
-- select * from inventory;
-- select * from rental;
-- select * from payment;
select c.name as category_name , sum(p.amount) as Total_Rev from category c
join film_category fc on c.category_id = fc.category_id
join inventory i on fc.film_id = i.film_id
join rental r on i.inventory_id=r.inventory_id
join payment p on r.rental_id=p.rental_id
group by c.name
order by Total_Rev desc;



-- 12.Rentals in Last Month
-- select * from rental;
SELECT rental_date as date, COUNT(*) AS total_rentals_last_month FROM rental
WHERE rental_date >= DATE_SUB((SELECT MAX(rental_date) FROM rental), INTERVAL 1 MONTH)
GROUP BY rental_date
ORDER BY rental_date ASC;



-- 13.Customers by City
-- select * from customer;
-- select * from address;
-- select * from city;
select c.city as City, count(cu.customer_id) as total_customers from customer cu
join address a on cu.address_id = a.address_id
join city c on a.city_id = c.city_id
group by c.city 
-- having total_customers > 1
order by total_customers desc;



-- 14.Staff and Their Store
-- select * from staff;
-- select * from store;
select s.staff_id as ID, concat(s.first_name , "  " , s.last_name)as NAME, st.store_id as STORE_ID from staff s
left join store st on s.store_id = st.store_id
order by ID asc;



-- 15.Film Count by Rating
-- select * from film;
select  rating as Rating, count(*) as Total_No_of_Films from film
group by  rating
order by Total_No_of_Films asc;



-- 16.Films with Max Length
-- select * from film;
select distinct film_id as ID , title as NAME, max(length) as Longest from film
group by  film_id, title
having Longest = (select max(length) from film)
order by Longest desc;



-- 17.Customers and Their Last Payment
-- select * from customer;
-- select * from payment;
select  c.customer_id as ID , concat(c.first_name,' ',c.last_name) as Name, max(p.payment_date) as Latest_Pay_Date  from customer c
left join payment p on c.customer_id = p.customer_id
group by c.customer_id ,  c.first_name, c.last_name
order by ID
limit 10;



-- 18.Top 5 Customers by Rentals
-- select * from customer;
-- select * from rental;
select c.customer_id as ID, concat(c.first_name,' ',c.last_name) as Name, count(r.rental_id) as No_of_Rentals from customer c
left join rental r on c.customer_id = r.customer_id
group by c.customer_id,c.first_name,c.last_name
order by No_of_Rentals desc
limit 5;



-- 19.Total Films per Actor
-- select * from actor;
-- select * from film;
-- select * from film_actor;
select a.actor_id as ID, concat(a.first_name,' ',a.last_name) as  Name , count(f.film_id) as No_of_films from actor a
left join film_actor fa on a.actor_id = fa.actor_id
left join film f on fa.film_id = f.film_id
group by a.actor_id, a.first_name, a.last_name
order by ID asc;



-- 20.Categories with Least Films
-- select * from category;
-- select * from film_category;
-- select * from film;
select c.category_id as ID, c.name as Category , count(f.film_id) as Films from category c
left join film_category fc on c.category_id = fc.category_id
left join film f on fc.film_id =f.film_id
group by c.category_id, c.name 
order by Films asc;