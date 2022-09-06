/*Select query with unique results*/
SELECT DISTINCT column, another_column, …
FROM mytable
WHERE condition(s);

/*DISTINCT blindly removes duplicates, it's not the most convenient option*/

/*Ordering results with ORDER BY*/
SELECT column, another_column, …
FROM mytable
WHERE condition(s)
ORDER BY column ASC/DESC;

/*LIMIT and OFFSET*/
SELECT column, another_column, …
FROM mytable
WHERE condition(s)
ORDER BY column ASC/DESC
LIMIT num_limit OFFSET num_offset;

/*Exercise*/

/*1.List all directors of Pixar movies alphabetically, without duplicates */
SELECT DISTINCT director FROM movies
ORDER BY director ASC;

/*2.List the last four Pixar movies released(ordered from most recent to least )*/
SELECT title,year FROM movies
ORDER BY year DESC
LIMIT 4

/*3.List first five Pixar movies sorted alphabetically*/
SELECT title FROM movies
ORDER BY title ASC
LIMIT 5;

/*4.List teh next five Pixar movies sorted alphabetically*/
SELECT title FROM movies
ORDER BY title ASC
LIMIT 5 OFFSET 5;
