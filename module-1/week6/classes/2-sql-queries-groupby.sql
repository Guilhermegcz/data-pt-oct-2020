-- selecting columns with spaces
SELECT building_id, " building_name" FROM buildings;

SELECT * FROM buildings;

-- selecting columns with uppercase letters in PostgreSQL
SELECT * FROM cities;

SELECT "City", "Population" FROM cities;

-- renaming columns (creating an alias)
SELECT role, name, years_employed FROM employees;

-- some formatting patterns
SELECT 
	role AS profession, 
	name, 
	years_employed anos_empregado 
FROM employees;

-- mine
SELECT role AS profession, 
	   name, 
	   years_employed anos_empregado,
	   building
  FROM employees;
  
-- creepy
SELECT role AS profession
	   ,name
	   ,years_employed anos_empregado
	   ,building
  FROM employees;
  
-- filters
SELECT * 
  FROM movies
 WHERE year < 2000;
 
SELECT * 
  FROM movies
 WHERE year >= 2000 
   AND year < 2010;
   
SELECT * 
  FROM movies
 WHERE year BETWEEN 2000 AND 2009
   AND length_minutes < 100;
 
SELECT * 
  FROM movies
 WHERE (year > 2000 AND year < 2010) 
   AND (length_minutes > 90 AND length_minutes < 110);
   
-- LIKE
SELECT * 
  FROM movies
 WHERE title LIKE 'Toy %'
 
SELECT * 
  FROM movies
 WHERE title LIKE 'Toy Story _'

-- regex
SELECT * 
  FROM movies
 WHERE title ~ '^[A-L].*'
 
SELECT director, REPLACE(director, 'L', 'X') FROM movies;
SELECT director, 
	   REGEXP_REPLACE(director, 'John (.*)', '\1') 
  FROM movies;
-- https://www.postgresqltutorial.com/regexp_replace/#:~:text=The%20PostgreSQL%20REGEXP_REPLACE()%20function%20replaces%20substrings%20that%20match%20a,use%20the%20REPLACE()%20function.

   
-- select occurs after the where clause
SELECT role AS profession,
	   name,
	   years_employed anos_empregado,
	   building
  FROM employees
 WHERE role = 'Engineer';
 
-- limit 

SELECT role AS profession,
	   name,
	   years_employed anos_empregado,
	   building
  FROM employees
 WHERE role = 'Engineer'
 LIMIT 3;
 
 -- offset
 SELECT role AS profession,
	   name,
	   years_employed anos_empregado,
	   building
  FROM employees
 WHERE role = 'Engineer'
 LIMIT 3 OFFSET 2;
 
 
-- ORDER BY
SELECT * FROM movies LIMIT 5;

SELECT * 
  FROM movies
 ORDER BY length_minutes;
 
-- ordering by two columns
-- ascending by director and descending by length_minutes
SELECT * 
  FROM movies
 ORDER BY director, 
          length_minutes DESC;


SELECT id, 
       title,
	   director AS diretor,
	   year,
	   length_minutes
  FROM movies
 ORDER BY diretor, 
          length_minutes DESC,
		  id; -- id is not relevant because there's no tie in length_minutes
		  
-- Calculations
SELECT 10 * 20;

SELECT AVG(length_minutes) AS avg_minutes 
  FROM movies;

SELECT MAX(length_minutes) AS max_minutes 
  FROM movies;
  
SELECT AVG(length_minutes) AS avg_minutes,
	   MAX(length_minutes) AS max_minutes,
	   1 AS constant_col
  FROM movies;

-- count the number of non-null values
SELECT COUNT(length_minutes) FROM movies;

SELECT COUNT(role) FROM employees;
SELECT COUNT(building) FROM employees;

SELECT COUNT(*) FROM employees;

SELECT DISTINCT director FROM movies;

-- group by

SELECT role,
	   MAX(name),	
	   COUNT(*) 
  FROM employees
 GROUP BY role;
 
SELECT director,
       COUNT(*) AS qtd_movies,
	   AVG(length_minutes) AS avg_minutes,
	   SUM(length_minutes) AS sum_minutes
  FROM movies
 GROUP BY director
 ORDER BY sum_minutes;
 
 
-- CASE WHEN
SELECT * FROM movies;

SELECT id,
       title,
	   director,
	   year,
	   year * 10 AS year_10,
	   (CASE WHEN year < 2000 THEN 0 ELSE 1 END) AS fl_post_millenium,
	   (CASE WHEN title ~ 'Toy .*' THEN length_minutes ELSE 0 END) AS toy_movie
  FROM movies;
 
 
SELECT director,
       COUNT(*) AS qtd_movies,
	   AVG(length_minutes) AS avg_minutes,
	   SUM(length_minutes) AS sum_minutes,
	   SUM(CASE WHEN year > 2000 THEN 1 ELSE 0 END) AS qtd_movies_post_millenium
	   -- SUM(CASE WHEN tipo_transacao = 'BOLETO' THEN vlr ELSE 0 END) AS vlr_boleto
  FROM movies
 GROUP BY director
 ORDER BY sum_minutes;



 











