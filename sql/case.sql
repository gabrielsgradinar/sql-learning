select customer_id, 
case 
	when (customer_id <= 100) then 'Premium'
	when (customer_id between 100 and 200) then 'Plus'
	else 'Normal'
end as cutomer_class
from customer;

-- CASE EXPRESSION

select customer_id,
case customer_id
	when 2 then 'Winner'
	when 5 then 'Second Place'
	else 'Normal'
end raffle_results
from customer; 


select 
sum(case rental_rate
	when 0.99 then 1
	else 0
end) as numer_of_bargains
from film;

select
sum(
	case rating
	when 'R' then 1 else 0
	end 
) as r,
sum(
	case rating
	when 'PG' then 1 else 0
	end 
) as pg,
sum(
	case rating
	when 'PG-13' then 1 else 0
	end 
) as pg13
from film;