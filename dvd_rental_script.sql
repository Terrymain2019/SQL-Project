/*Pull the customer information from customer table*/
SELECT * FROM customer;
/*Grab first and last names and email address to send a promotional email to the existing customers*/
SELECT first_name, last_name, email 
FROM customer;
/*What is the rental price for the dvds from this store?*/
SELECT * FROM film;
SELECT DISTINCT rental_rate 
FROM film;
--All dvds are rented out for $4.99, $2.99 and $0.99--
/*What types of ratings are our movies from this dvd rental store?*/
SELECT DISTINCT rating 
FROM film;
--There are 5 ratings from the movies the store carries. They are R, PG, G, NC-17 and PG-13.--
/*What's the email address for a customer with their name as Nancy Thomas?*/
SELECT email FROM customer
WHERE first_name = 'Nancy' 
AND last_name = 'Thomas';
/*A customer wants to know the description of the movie "Outlaw Hanky"?*/
SELECT description FROM film
WHERE title = 'Outlaw Hanky';
/*A customer is late to return a movie and we are looking for their number to call. 
We know the customer lives at '259 Ipoh Drive'.*/
SELECT phone FROM address
WHERE address = '259 Ipoh Drive';