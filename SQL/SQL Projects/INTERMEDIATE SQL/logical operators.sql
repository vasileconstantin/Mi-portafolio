CREATE TABLE europe_countries (
  id SERIAL PRIMARY KEY,
  country_name VARCHAR(50) NOT NULL,
  capital VARCHAR(50) NOT NULL,
  population INT NOT NULL,
  area_km2 INT NOT NULL,
  gdp_usd FLOAT NOT NULL
);

INSERT INTO europe_countries (country_name, capital, population, area_km2, gdp_usd)
VALUES
  ('Germany', 'Berlin', 83020000, 357386, 4049.0),
  ('France', 'Paris', 66992000, 643801, 2925.0),
  ('United Kingdom', 'London', 67886004, 243610, 2677.0),
  ('Italy', 'Rome', 60252824, 301338, 2082.0),
  ('Spain', 'Madrid', 46937060, 505990, 1413.0);
 
SELECT country_name , population, area_km2
FROM europe_countries
WHERE population > 50000000 AND area_km2 > 500000;
-- This operator allow us to combine multiple conditions together.

SELECT country_name, population, area_km2
FROM europe_countries 
WHERE population > 50000000 OR area_km2 > 500000;
-- We specify multiple conditions where at least one condition must be true.

SELECT country_name, capital
FROM europe_countries
WHERE NOT capital = 'Berlin';
-- This will return countries that don't have "Berlin" as their capital.

SELECT country_name, capital 
FROM europe_countries
WHERE country_name IN ('France','Spain');
-- This will return countries whose names match either "France" or "Spain".

SELECT country_name, capital 
FROM europe_countries
WHERE country_name LIKE 'U%';
-- This will return countries whose names start with "U".

SELECT country_name, population
FROM europe_countries
WHERE population BETWEEN 60000000 AND 70000000;
-- This will return countries whose populations fall within the specified range.

SELECT country_name, gdp_usd
FROM europe_countries
WHERE gdp_usd IS NULL;
-- This will return countries that don'tahve a GDP value assigned.

SELECT country_name, population
FROM europe_countries e1
WHERE EXISTS (
	SELECT * 
  	FROM europe_countries e2
  	WHERE e2.population > (SELECT AVG(population) FROM europe_countries)
  		AND e1.id = e2.id
  );
-- This will return countries whose populatiosn are greater than the average poplation of all countries in the table.

SELECT country_name, gdp_usd
FROM europe_countries e1
WHERE gdp_usd > ALL (
  SELECT gdp_Usd
  FROM europe_countries e2 
  WHERE e1.id <> e2.id
  );
-- This will return the  country with the highest GDP value

  

 


  




