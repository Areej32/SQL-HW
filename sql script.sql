-- Select sakila Database
USE sakila;

-- 1a.list of all the actors who have Display the first and last names of all actors from the table actor.
SELECT first_name, last_name FROM actor;

-- 1b. Display the first and last name of each actor in a single column in upper case letters. Name the column Actor Name
SELECT CONCAT (UPPER(first_name)," ", UPPER(last_name)) AS `Actor Name` FROM actor;

-- 2a. You need to find the ID number, first name, and last name of an actor, of whom you know only the first name, "Joe." 
SELECT actor_id, first_name, last_name 
FROM actor
WHERE first_name ='Joe';

-- 2b. Find all actors whose last name contain the letters GEN
SELECT actor_id, first_name, last_name FROM actor
WHERE last_name LIKE '%GEN%';

-- 2c. Find all actors whose last names contain the letters LI, ordered rows by last name and first name
SELECT actor_id, last_name, first_name FROM actor
WHERE last_name LIKE '%LI%'
ORDER BY last_name ASC, first_name ASC;

-- 2d. Using IN, display the country_id and country columns of the following countries: Afghanistan, Bangladesh, and China:
SELECT country_id, country
FROM country          
WHERE country IN ('Afghanistan', 'Bangladesh', 'China');

-- 3a. Add a middle_name column to the table actor. Position it between first_name and last_name.
ALTER TABLE actor
ADD middle_name VARCHAR(60) AFTER first_name;

-- Display my new table
SELECT * from actor;

-- 3b. Change the data type of the middle_name column to blobs.
ALTER TABLE actor
MODIFY COLUMN middle_name BLOB;
SELECT * from actor;

-- 3c. Now delete the middle_name column.
ALTER TABLE actor
DROP COLUMN middle_name;
SELECT * from actor;




