--Restaurant Database
CREATE TABLE restaurants (
  id INT PRIMARY KEY,
  name VARCHAR(255),
  address VARCHAR(255),
  phone VARCHAR(20),
  website VARCHAR(255)
  );

CREATE TABLE menu_items (
  id INT PRIMARY KEY,
  name VARCHAR(255),
  description TEXT,
  price DECIMAL(8,2),
  restaurant_id INT,
  FOREIGN KEY (restaurant_id) REFERENCES restaurants(id)
  );
  
  
INSERT INTO restaurants ( id, name, address, phone, website)
VALUES
	 (1, 'Joe\'s Pizza', '123 Main St, Anytown USA', '555-1234', 'http://joespizza.com'),
     (2, 'Sushi Palace', '456 High St, Anytown USA', '555-5678', 'http://sushipalace.com');
   
INSERT INTO menu_items (id, name, description, price, restaurant_id)
VALUES
	(1, 'Cheese Pizza', 'Tomato sauce, mozzarella cheese', 10.99, 1),
    (2, 'Pepperoni Pizza', 'Tomato sauce, mozzarella cheese, pepperoni', 12.99, 1),
    (3, 'California Roll', 'Crab, avocado, cucumber', 6.99, 2),
    (4, 'Spicy Tuna Roll', 'Tuna, spicy sauce', 8.99, 2),
    (5, 'Salmon Nigiri', 'Fresh salmon on top of sushi rice', 2.99, 2);

--1. Show all restaurants and their phone numbers
SELECT name, phone FROM restaurants;

--2. Show the items at Joe's Pizza:
SELECT name , description, price FROM menu_items WHERE restaurant_id = 1;

--3. Show the average price of menu items  at each restaurant
SELECT restaurants.name, AVG(menu_items.price) AS average_price
FROM restaurants
INNER JOIN menu_items ON restaurants.id = menu_items.restaurant_id
GROUP BY restaurants.name;

--4. Show the restaurant name, menu item name, and price for all menu items that cost more than $10:
SELECT restaurants.name, menu_items.name, menu_items.price
FROM restaurants
INNER JOIN menu_items ON restaurants.id = menu_items.restaurant_Id
WHERE menu_items.price > 10

--5.Show the top 5 most expensive menu items:
SELECT name, price
FROM menu_items
ORDER BY price DESC
LIMIT 5;

--6.Show the total number of menu items for each restaurant:
SELECT restaurants.name, COUNT(menu_items.id) AS total_menu_items
FROM restaurants
LEFT JOIN menu_items ON restaurants.id = menu_items.restaurant_id
GROUP BY restaurants.name;

--7. Show the total number of menu items for each restaurant
SELECT restaurants.name, COUNT(menu_items.id) AS num_spicy_items
FROM restaurants 
INNER JOIN menu_items ON restaurants.id = menu_items.restaurant_id
WHERE menu_items.description LIKE '%spicy%'
GROUP BY restaurants.name;