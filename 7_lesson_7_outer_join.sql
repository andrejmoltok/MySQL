/*
If the two tables have asymmetric data, which can easily happen when data is entered in different stages, 
then we would have to use a LEFT JOIN, RIGHT JOIN or FULL JOIN instead to ensure that the data you need 
is not left out of the results.
*/

/*Select query with LEFT/RIGHT/FULL JOINs on multiple tables*/
SELECT column, another_column, …
FROM mytable
INNER/LEFT/RIGHT/FULL JOIN another_table 
    ON mytable.id = another_table.matching_id
WHERE condition(s)
ORDER BY column, … ASC/DESC
LIMIT num_limit OFFSET num_offset;

/*Exercise*/
/*1.Find all the list of all buildings that have employees*/
SELECT DISTINCT building_name FROM buildings
LEFT JOIN employees
    ON building = building_name
WHERE building = building_name

/*2.Find the list of all buildings and their capacity*/
SELECT building_name, capacity FROM buildings

/*3.List all buildings and the distinct employee roles 
in each building (including empty buildings)*/
SELECT DISTINCT building_name, role 
FROM buildings 
  LEFT JOIN employees
    ON building_name = building;