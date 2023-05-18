-- Begginer useful commands
-- Create the table
CREATE TABLE best_destinations (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    country VARCHAR(50) NOT NULL,
    rating INTEGER NOT NULL
);

-- Insert some values
INSERT INTO best_destinations (name, country, rating) VALUES ('Tokyo', 'Japan', 9);
INSERT INTO best_destinations (name, country, rating) VALUES ('Paris', 'France', 8);
INSERT INTO best_destinations (name, country, rating) VALUES ('New York', 'United States', 8);
INSERT INTO best_destinations (name, country, rating) VALUES ('Sydney', 'Australia', 7);
INSERT INTO best_destinations (name, country, rating) VALUES ('Cape Town', 'South Africa', 9);

-- Update a row
UPDATE best_destinations SET rating = 10 WHERE name = 'Tokyo';

-- Delete a row
DELETE FROM best_destinations WHERE name = 'Sydney';

-- Select data from the table
SELECT * FROM best_destinations;

-- In order to understand the SELECT command we will see more examples
-- Select distinct countries
SELECT DISTINCT country FROM best_destinations;

-- SELECT name, country FROM best_destinations WHERE rating >= 9;
SELECT name, country FROM best_destinations WHERE rating >= 9;

-- SELECT all columns and filter by country
SELECT * FROM best_destinations WHERE country = 'France';