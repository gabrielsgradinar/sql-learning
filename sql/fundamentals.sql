select first_name ,last_name , email  from customer c ;

-- DISTINCT
select distinct (rating)  from film;

-- COUNT
select count(distinct amount) from payment;

-- WHERE
select email from customer 
where first_name = 'Nancy' and last_name = 'Thomas';

select description from film 
where title = 'Outlaw Hanky';

select phone from address 
where address = '259 Ipoh Drive';

-- ORDER BY, LIMIT
select customer_id from payment
order by payment_date asc 
limit 10;

select c.title, c.length  from film c
order by c.length asc
limit 5;


-- Challenge

select count(amount) from payment
where amount > 5.00;

select count(first_name) from actor
where first_name like 'P%';

select count(distinct(district)) from address;

select distinct(district) from address;

select count(*) from film
where rating = 'R' and replacement_cost between 5.00 and 15.00;

select count(*) from film
where title like '%Truman%';


