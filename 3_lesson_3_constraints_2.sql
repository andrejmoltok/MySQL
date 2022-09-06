/*
            Op                             Condition                                SQL Ex
1.          `=`                 Case sensitive exact string comparison          col_name = 'abc'
2.      `!= or <>`              Case sensitive exact string inequality          col_name != 'abcd'
                                comparison
3.        `LIKE`                Case insensitive exact string comparison        col_name LIKE 'abc'
4.      `NOT LIKE`              Case insensitive exact string inequality        col_name NOT LIKE 'ABCD'
                                comparison
5.          `%`                 Used in a string to match zero or more          col_name LIKE '%AT%'
                                characters
6.          `_`                 Used in a string to a single character          col_name LIKE 'AN_'
                                (ONLY with LIKE or NOT LIKE)
7.        `IN(...)`             String exists in a list                         col_name IN ('A','B','C')
8.       `NOT IN(...)`          String does not exist in a list                 col_name NOT IN ('D','E','F')
*/

/*Exercise*/

/*1.Find all Toy Story movies*/
SELECT * FROM movies
WHERE title LIKE "Toy Story%";

/*2.Find all movies directed by John Lasseter*/
SELECT title FROM movies
WHERE director LIKE "John Lasseter";

/*3.Find all movies(and director) not directed by John Lasseter*/
SELECT title,director FROM movies
WHERE director NOT LIKE "John Lasseter";

/*4.Find all WALL-* movies*/
SELECT title FROM movies
WHERE title LIKE "Wall-_";