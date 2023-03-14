select distinct(to_char(payment_date, 'MONTH')) 
from payment;


select count(*)
from payment
where extract(dow from payment_date) = 1;


select round(rental_rate/replacement_cost, 4)*100 as pencent_cost 
from film;