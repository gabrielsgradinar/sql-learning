select title, rental_rate 
from film
where rental_rate > (select avg(rental_rate) from film);


select film_id, title
from film 
where film_id in
(select inventory.film_id  from rental
inner join inventory on inventory.inventory_id = rental.inventory_id 
where return_date between '2005-05-29' and '2005-05-30')
order by title;


select first_name, last_name  from customer as c
where exists (
	select * from payment as p
	where p.customer_id = c.customer_id 
	and p.amount > 11
);