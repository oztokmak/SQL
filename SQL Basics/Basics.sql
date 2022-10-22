select * from film where replacement_cost between 12.99 and 16.99;
select first_name,last_name from actor where first_name in('Penelope', 'Nick', 'Ed');
select * from film where rental_rate in(0.99, 2.99, 4.99) and replacement_cost in (12.99, 15.99, 29.99);
select country from country where country ~~ 'A%a';
select country from country where country ~~ '_______%n';
SELECT title FROM film WHERE title ILIKE '%t%t%t%t';
select * from film where title ~~ 'C%' and length>90 and rental_rate = 2.99;
