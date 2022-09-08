/*
Tables that share information about a single entity need to have a primary key 
that identifies that entity uniquely across the database. 
One common primary key type is an auto-incrementing integer (because they are space efficient),
but it can also be a string, hashed value, so long as it is unique.
*/

/*Select query with INNER JOIN on multiple tables*/
SELECT column, another_table_column, …
FROM mytable
INNER JOIN another_table 
    ON mytable.id = another_table.id
WHERE condition(s)
ORDER BY column, … ASC/DESC
LIMIT num_limit OFFSET num_offset;

/*
The INNER JOIN is a process that matches rows from the first table and 
the second table which have the same key (as defined by the ON constraint) 
to create a result row with the combined columns from both tables.
After the tables are joined, the other clauses we learned previously are then applied.
*/

/*Exercise*/

/*1.Find the domestic and international sales of each movie*/
SELECT id, title, domestic_sales, international_sales 
FROM movies
INNER JOIN boxoffice
    ON id = movie_id
ORDER BY id ASC

/*2.Show the sales numbers for each movie that did better internationally
than domestically*/
SELECT id, title, international_sales, domestic_sales 
FROM movies
INNER JOIN boxoffice
    ON id = movie_id
WHERE international_sales > domestic_sales
ORDER BY international_sales DESC

/*3.List all movies by their ratings in descending order*/
SELECT id, title, rating 
FROM movies
INNER JOIN boxoffice
    ON id = movie_id
ORDER BY rating DESC