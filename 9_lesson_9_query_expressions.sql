/*
The use of expressions can save time and extra post-processing of the result data, 
but can also make the query harder to read, so we recommend that when expressions 
are used in the SELECT part of the query, that they are also given a descriptive 
alias using the AS keyword.

In addition to expressions, regular columns and even tables can also have aliases 
to make them easier to reference in the output and as a part of simplifying more 
complex queries.
*/

SELECT title, (domestic_sales + international_sales) / 1000000 AS gross_sales_millions
FROM movies
  JOIN boxoffice
    ON movies.id = boxoffice.movie_id;

SELECT title, rating * 10 AS rating_percent
FROM movies
  JOIN boxoffice
    ON movies.id = boxoffice.movie_id;

SELECT title, year
FROM movies
WHERE year % 2 = 0;