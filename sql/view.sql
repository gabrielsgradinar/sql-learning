create or replace view customer_info as 
select first_name, last_name, address, district from customer
inner join address
on customer.address_id = address.address_id;