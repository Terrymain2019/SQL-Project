/*1. Pull the customer information from customer table*/
SELECT * FROM customer;
/*2. Grab first and last names and email address to send a promotional email to the existing customers*/
SELECT first_name, last_name, email 
FROM customer;
/*3. What is the rental price for the dvds from this store?*/
SELECT * FROM film;
SELECT DISTINCT rental_rate 
FROM film;
--All dvds are rented out for $4.99, $2.99 and $0.99--
/*4. What types of ratings are our movies from this dvd rental store?*/
SELECT DISTINCT rating 
FROM film;
--There are 5 ratings from the movies the store carries. They are R, PG, G, NC-17 and PG-13.--
/*5. What's the email address for a customer with their name as Nancy Thomas?*/
SELECT email FROM customer
WHERE first_name = 'Nancy' 
AND last_name = 'Thomas';
/*6. A customer wants to know the description of the movie "Outlaw Hanky"?*/
SELECT description FROM film
WHERE title = 'Outlaw Hanky';
/*7. A customer is late to return a movie and we are looking for their number to call. 
We know the customer lives at '259 Ipoh Drive'.*/
SELECT phone FROM address
WHERE address = '259 Ipoh Drive';
/*8. How many payments were received from dvd rentals?*/
SELECT COUNT(*) FROM payment;
--The store had received 14,596 rows of payments---
/*9a. How many types of payments were made?*/
SELECT COUNT (DISTINCT (amount))
FROM payment;
--The store received 19 types of different payments--
/*b. What were they?*/
SELECT DISTINCT (amount) 
FROM payment;
/*10. Sort customers' names, last and first names*/
SELECT  first_name, last_name 
FROM customer
ORDER BY first_name ASC, last_name DESC;
/*11. get the customer ID numbers for the top 10 highest payment amounts. */
SELECT customer_id, amount FROM payment
ORDER BY amount DESC, customer_id
LIMIT 10;
/*12. Get the titles of the movies with film ids 1-5.*/
SELECT film_id, title, release_year FROM film
ORDER BY film_id
LIMIT 5;
/*13. What's the price of movie rentals during Valentine period (Feb.13-16). */
SELECT amount, payment_date FROM payment
WHERE payment_date BETWEEN '2007-02-13' AND '2007-02-16';
/*14. What dates were movies rented by customer with ids 7,10 &12?*/
SELECT customer_id, rental_id, return_date
FROM rental
WHERE customer_id IN (7,10,12) 
ORDER BY return_date DESC; 
/*15. Look up a customer who's first name starts with Jen*/
SELECT first_name, last_name
FROM customer
WHERE first_name LIKE 'Jen%';
/*16. Look up a customers who's first name ends with 'y'*/ 
SELECT first_name, last_name
FROM customer
WHERE first_name LIKE '%y';
/*17. Look up a customers who's first name has 'er' anywhere in the name*/ 
SELECT first_name, last_name
FROM customer
WHERE first_name LIKE '%er%';
/*18. Look up customers who's first name starts with another letter followed by 'her'*/
SELECT first_name, last_name
FROM customer
WHERE first_name LIKE '_her%';
/*19. How many payment transactions were greater than $5.00?*/
SELECT COUNT(amount) FROM payment
WHERE amount > 5;
/*20. How many actors have a first name that starts with the letter P?*/
SELECT COUNT(*) FROM actor
WHERE first_name LIKE 'P%';
/*21.a. How many unique districts are our customers from?*/
SELECT COUNT(DISTINCT(district)) 
FROM address;
/*21.b. Select the list of those distict districts.*/
SELECT DISTINCT(district)
FROM address;
/*22. How many films have a rating of R and a replacement cost between $5 and $15?*/
SELECT COUNT(*) 
FROM film
WHERE rating = 'R' 
AND replacement_cost BETWEEN 5 AND 15;
/*23. How many films have the word Truman somewhere in the title?*/
SELECT COUNT(*)
FROM film
WHERE title ILIKE '%Truman%';


