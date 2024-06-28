SELECT city.city_id,city.city,customer.first_name,customer.last_name,customer.email,address.address 
FROM customer 
JOIN address ON customer.address_id = address.address_id
JOIN city ON address.city_id = city.city_id
WHERE city.city_id = 312;

SELECT film.title, film.description, film.release_year, film.rating, film.special_features,category.name AS genre
FROM film_category 
JOIN category ON film_category.category_id = category.category_id
JOIN film ON film_category.film_id = film.film_id 
WHERE category.name = 'comedy';

SELECT actor.actor_id, CONCAT(actor.first_name,' ' , actor.last_name) AS actor_name, film.film_id, film.title, film.description, film.release_year
FROM film_actor
JOIN actor ON film_actor.actor_id = actor.actor_id
JOIN film ON film_actor.film_id = film.film_id
WHERE actor.actor_id = 5; 

SELECT customer.store_id, city.city_id, customer.first_name, customer.last_name, customer.email, address.address
FROM customer 
JOIN address ON customer.address_id = address.address_id
JOIN city ON address.city_id = city.city_id
WHERE (city.city_id = 1 OR city.city_id = 42 OR city.city_id = 312 OR city.city_id = 459) AND customer.store_id = 1;

SELECT film.title,film.description,film.release_year, film.rating, film.special_features
FROM film_actor
JOIN actor ON film_actor.actor_id = actor.actor_id
JOIN film ON film_actor.film_id = film.film_id
WHERE film_actor.actor_id = 15 AND film.rating = 'G' AND film.special_features LIKE "%Behind the Scenes";

SELECT film.film_id, film.title,film_actor.actor_id, CONCAT(actor.first_name, actor.last_name) AS 'actor_name'
FROM film_actor
JOIN actor ON film_actor.actor_id = actor.actor_id
JOIN film ON film_actor.film_id = film.film_id
WHERE film.film_id = 369;

SELECT film.film_id,film.title, film.description, film.release_year, film.rating, film.special_features,category.name AS genre, film.rental_rate
FROM film_category 
JOIN category ON film_category.category_id = category.category_id
JOIN film ON film_category.film_id = film.film_id 
WHERE film.rental_rate = 2.99 AND category.name = 'Drama';

SELECT actor.actor_id, CONCAT(actor.first_name, ' ', actor.last_name) AS 'actor_name',  film.film_id, film.title, film.description,film.release_year, film.rating, film.special_features, film.special_features,category.name AS genre
FROM film_category 
JOIN category ON film_category.category_id = category.category_id
JOIN film ON film_category.film_id = film.film_id 
JOIN film_actor ON film_category.film_id = film_actor.film_id
JOIN actor ON film_actor.actor_id = actor.actor_id
WHERE CONCAT(actor.first_name, ' ', actor.last_name) = 'SANDRA KILMER' AND category.name = 'Action';

