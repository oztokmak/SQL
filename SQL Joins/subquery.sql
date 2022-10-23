select count(*) from film where length > (select avg(length) from film);
select count(rental_rate) from film where rental_rate = (select max(rental_rate) from film );
select count(rental_rate) from film where rental_rate = (select min(rental_rate) from film ) union select count(replacement_cost) from film where replacement_cost = (select min(replacement_cost) from film );
SELECT COUNT(payment_id), (customer_id) FROM payment GROUP BY customer_id ORDER BY COUNT(payment_id) DESC;