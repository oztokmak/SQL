select title,length,replacement_cost from film where title ~~ 'K%' order by length desc,replacement_cost asc limit 4;
select rating,count(*) from film group by rating order by count(*) desc;
select first_name from customer group by first_name order by count(*) desc limit 1;
SELECT first_name, last_name, SUM(amount) AS total_amount_of_spending FROM payment AS p INNER JOIN customer AS c ON p.customer_id = c.customer_id GROUP BY first_name, last_name, p.customer_id ORDER BY SUM(amount) DESC LIMIT 1;
SELECT cat.name, COUNT(*) FROM category AS cat INNER JOIN film_category AS fc ON fc.category_id = cat.category_id GROUP BY fc.category_id, cat.name
SELECT COUNT(*) FROM film WHERE title ILIKE '%e%e%e%e%';