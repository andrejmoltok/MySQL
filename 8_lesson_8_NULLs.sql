/*
As an alternative to NULL there is a possibility of data-type appropriate
default values, like 0, but if there are incomplete data, then NULL is appropriate
Test a column for NULL values with WHERE clause using either IS NULL or IS NOT NULL
*/

/*Select query with constraints on NULL values*/
SELECT column, another_column, …
FROM mytable
WHERE column IS/IS NOT NULL
AND/OR another_condition
AND/OR …;

/*Exercise*/
/*1.Find the name and role of all employees who have not bee assigned to a building*/
SELECT name, role FROM employees
WHERE building IS NULL

/*2.Find the names of the buildings that hold no employees*/
SELECT building_name FROM buildings
LEFT JOIN employees
    ON building = building_name
WHERE building IS NULL
