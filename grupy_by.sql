select 
    staff_id, 
    count(payment_id) 
from payment
group by staff_id
order by count(payment_id) desc

select 
    rating, 
    round(avg(replacement_cost), 2) 
from film
group by rating 

select 
    customer_id, 
    sum(amount)
from payment
group by customer_id 
order by sum(amount) desc
limit 5


-- HAVING
select customer_id, count(payment_id) from payment
group by customer_id 
having count(payment_id) >= 40

select customer_id, sum(amount) from payment
where staff_id = 2
group by customer_id 
having sum(amount) > 100