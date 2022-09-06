/*Select query with constraints*/
SELECT column, another_column, …
FROM mytable
WHERE condition
    AND/OR another_condition
    AND/OR …;

/* 
        Operator                    Condition                                   SQL Ex.

1. `=,!=,<, <=, >, >=`      Standard numerical operators                col_name != 4
2. `BETWEEN...AND...`       Number within range of two values           col_name BETWEEN 1.5 AND 10.5
                            (inclusive)
3. `NOT BETWEEN...AND...`   Number is not within range of two values    col_name NOT BETWEEN 1 AND 10
                            (inclusive)
4. `IN...`                  Number exists in a list                     col_name IN (2,4,6)
5. `NOT IN...`              Number does not exist in a list             col_name NOT IN (1,3,5)

*/

/*SQL doesn't require keywords ALLCAPS, but it's more distinguisheable in usage*/

/*Exercise*/

/*1.Find the movie with the row id of 6*/
SELECT * FROM movies
WHERE id=6;

/*2.Select the movies released between the years 2000 and 2010*/
SELECT * FROM movies
WHERE year BETWEEN 2000 AND 2010;

/*3.Select the movies not released between 200 and 2010*/
SELECT title FROM movies
WHERE year NOT BETWEEN 2000 AND 2010;

/*4.Find the first 5 movies and their release years*/
SELECT title,year FROM movies
WHERE year <= 2003;