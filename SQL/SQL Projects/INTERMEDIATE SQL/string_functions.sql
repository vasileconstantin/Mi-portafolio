-- Create the table
CREATE TABLE la_liga_clubs (
    id SERIAL PRIMARY KEY,
    club_name VARCHAR(50) NOT NULL,
    city VARCHAR(50) NOT NULL,
    stadium_name VARCHAR(50) NOT NULL,
    manager_name VARCHAR(50) NOT NULL,
    founded_year INTEGER NOT NULL,
    website_url VARCHAR(100) NOT NULL,
    email_address VARCHAR(100) NOT NULL
);

-- Insert some data
INSERT INTO la_liga_clubs (club_name, city, stadium_name, manager_name, founded_year, website_url, email_address)
VALUES ('Real Madrid', 'Madrid', 'Santiago Bernabeu', 'Zinedine Zidane', 1902, 'www.realmadrid.com', 'info@realmadrid.com');

INSERT INTO la_liga_clubs (club_name, city, stadium_name, manager_name, founded_year, website_url, email_address)
VALUES ('Barcelona', 'Barcelona', 'Camp Nou', 'Ronald Koeman', 1899, 'www.fcbarcelona.com', 'info@fcbarcelona.com');

INSERT INTO la_liga_clubs (club_name, city, stadium_name, manager_name, founded_year, website_url, email_address)
VALUES ('Atletico Madrid', 'Madrid', 'Wanda Metropolitano', 'Diego Simeone', 1903, 'en.atleticodemadrid.com', 'info@atleticodemadrid.com');

-- Use string functions to manipulate data
SELECT club_name, city, UPPER(manager_name) AS upper_manager,
	   CONCAT (stadium_name, ' in ', city) AS stadium_location,
       POSITION('a' IN email_address) AS position_of_a
FROM la_liga_clubs;

-- The UPPER function converts the "manager_name" column to uppercase, CONCAT, concatenates two strings together. 
-- The last function is "POSITION" which finds the positions of "a" in the "email_address" column.

SELECT LEFT(club_name, 3) FROM la_liga_clubs;
-- Returns the leftmost characters of a string up to a specified length

SELECT RIGHT(club_name, 3) FROM la_liga_clubs;
-- Returns the rightmost characters of a string up to a specified length

SELECT REVERSE(club_name) FROM la_liga_clubs;
-- Reverses the order of characters in a string

SELECT INITCAP(city) FROM la_liga_clubs;
-- Capitalizes the first letter of each word in a string








