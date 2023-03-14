select district, email from customer
inner join address
on customer.address_id = address.address_id
where district = 'California';


select title, actor.first_name, actor.last_name from film
left join film_actor
on film_actor.film_id = film.film_id
inner join actor
on film_actor.actor_id = actor.actor_id
where  actor.first_name = 'Nick' and actor.last_name = 'Wahlberg';
