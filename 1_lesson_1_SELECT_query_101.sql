/*Writing SELECT statements is simply writing queries*/

/*Select query for a specific columns*/
SELECT column, another_column, …
FROM mytable;

/*Select query for all columns*/
SELECT * 
FROM mytable;

/*Exercise 1*/

/*1.Find the title of each movie*/
SELECT title
FROM movies;

/*2.Find the director of each movie*/
SELECT director
FROM movies;

/*3.Find the title and director of each movie*/
SELECT title, director
FROM movies;

/*4.Find the title and year of each movie*/
SELECT title, year
FROM movies;

/*5.Find all information of each movie*/
SELECT *
FROM movies;