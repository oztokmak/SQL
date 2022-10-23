-- Between & In
select * from film where replacement_cost between 12.99 and 16.99;
select first_name,last_name from actor where first_name in('Penelope', 'Nick', 'Ed');
select * from film where rental_rate in(0.99, 2.99, 4.99) and replacement_cost in (12.99, 15.99, 29.99);
-- Like & ILike & Discint & Count 
select country from country where country ~~ 'A%a';
select country from country where country ~~ '_______%n';
select title from film where title ~~* '%t%t%t%t';
select * from film where title ~~ 'C%' and length>90 and rental_rate = 2.99;
select distinct replacement_cost from film;
select count(replacement_cost) from film;
select count(title) from film where title ~~* 't%' and rating ='G';
select count (country) from country where country ~~* '_____';
select count (city) from city where city ~~'R%r';
-- Oder By & Limit & Offset & Aggregate & Group By & Having 
select title from film where title ~~'%n' order by length desc limit 5;
select title from film where title ~~'%n' order by length asc offset 5 limit 5;
select * from customer where store_id=1 order by last_name desc limit 4;
select avg(rental_rate) from film;
select count(title) from film where title ~~'C%';
select max (length) from film where rental_rate = 0.99;
select count (distinct replacement_cost)  from film where length > 150;
select rating, count(*) from film group by rating;
select replacement_cost, count(*) from film group by replacement_cost having count(*)>50;
select store_id, count(*) from customer group by store_id;
select country_id,count(city) from city group by country_id order by count(city) desc limit 1;
