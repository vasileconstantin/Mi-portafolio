CREATE TABLE customers (
  id SERIAL PRIMARY KEY,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  email VARCHAR(100),
  phone VARCHAR(20),
  city VARCHAR(50),
  country VARCHAR(50),
  created_at TIMESTAMP DEFAULT NOW()
  );
 
-- Inserting some data into the customers table
  
INSERT INTO customers (first_name, last_name, email, phone, city, country)
VALUES
  ('John', 'Doe', 'johndoe@example.com', '+1-555-1234', 'New York', 'USA'),
  ('Jane', 'Smith', 'janesmith@example.com', '+1-555-5678', 'Los Angeles', 'USA'),
  ('Bob', 'Johnson', 'bobjohnson@example.com', '+1-555-9012', 'Chicago', 'USA'),
  ('Alice', 'Williams', 'alicewilliams@example.com', '+44-20-1234-5678', 'London', 'UK'),
  ('Lucas', 'Garcia', 'lucasgarcia@example.com', '+55-11-2345-6789', 'Sao Paulo', 'Brazil');