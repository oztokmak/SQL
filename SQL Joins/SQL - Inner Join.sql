select city, country from city join country on country.country_id=city.country_id;
select payment_id, first_name,last_name from payment join customer on customer.customer_id=payment.customer_id;
select rental_id, first_name, last_name from rental join customer on customer.customer_id=rental.customer_id;