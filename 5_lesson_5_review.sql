SELECT column, another_column, …
FROM mytable
WHERE condition(s)
ORDER BY column ASC/DESC
LIMIT num_limit OFFSET num_offset;

/*1.List all Canadian cities and their populations*/
SELECT city, population 
FROM north_american_cities
WHERE country = "Canada"

/*2.Order all cities in the United States by their latitude from north to south*/
SELECT city 
FROM north_american_cities
WHERE country = 'United States'
ORDER BY latitude DESC

/*3.List all cities west of Chicago, ordered from west to east*/
SELECT city, longitude 
FROM north_american_cities
WHERE longitude < -87.629798
ORDER BY longitude ASC

/*4.List the two most populated cities in Mexico by population*/
SELECT city 
FROM north_american_cities
WHERE country = 'Mexico'
ORDER BY population DESC
LIMIT 2

/*5.List the third and fourth largest cities(by population) 
in the United States and theri population*/
SELECT city, population 
FROM north_american_cities
WHERE country = 'United States'
ORDER BY population DESC
LIMIT 2 OFFSET 2