USE sakila;
SELECT * FROM 
-- 1)In the table actor, which are the actors whose last names are not repeated? For example if you would sort the data in the table actor by last_name, you would see that there is Christian Arkoyd, Kirsten Arkoyd, and Debbie Arkoyd. These three actors have the same last name. 
-- 1.1)So we do not want to include this last name in our output. Last name "Astaire" is present only one time with actor "Angelina Astaire", hence we would want this in our output list.
SELECT last_name, COUNT(last_name) AS 'overall_surname' FROM sakila.actor
GROUP BY last_name
HAVING COUNT(last_name)=1 -- counting how many time a X is counted in a table

-- 2)Which last names appear more than once? We would use the same logic as in the previous question but this time we want to include the last names of the actors where the last name was present more than once
SELECT last_name, COUNT(last_name) AS 'overall_surname' FROM sakila.actor
GROUP BY last_name
HAVING COUNT(last_name)>1 -- counting how many time a X is counted in a table

-- 3)Using the rental table, find out how many rentals were processed by each employee.


-- 4)Using the film table, find out how many films were released each year.
-- 5)Using the film table, find out for each rating how many films were there.
-- 6)What is the mean length of the film for each rating type. Round off the average lengths to two decimal places
-- 7)Which kind of movies (rating) have a mean duration of more than two hours?
-- 8)Rank films by length (filter out the rows that have nulls or 0s in length column). In your output, only select the columns title, length, and the rank.