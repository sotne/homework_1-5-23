--question 1
select c.first_name, c.last_name, a.district
from customer c 
join address a 
on c.customer_id = a.address_id
where a.district = 'Texas'


--question 2
--select customer_id 
--from payment p  
--where amount > 7

select first_name, last_name
from customer c 
where customer_id in (
	select customer_id 
	from payment p  
	where amount > 7
);

--question 3
--select customer_id 
--from payment p 
--group by customer_id 
--order by sum(amount)

select first_name, last_name
from customer c
where customer_id in (
	select customer_id 
	from payment p 
	group by customer_id 
	having sum(amount) > 175
	order by sum(amount)
)


--question 4
select c.first_name, c.last_name, a.district, c3.country
from customer c 
join address a 
on c.address_id = a.address_id 
join city c2 
on a.city_id = c2.city_id
join country c3 
on c2.country_id = c3.country_id
where c.country= 'Argentina'


--question 5	
select *
from film
join film_category fc 
on f.film_id = fc.film_id 
join category c 
on fc.category_id = c.category_id 

--question 6
select fa.film_id, count(a.actor_id)
from film f 
join film_actor fa 
on f.film_id = fa.film_id 
join actor a 
on fa.actor_id = a.actor_id 
group by f.film_id

--question 7
