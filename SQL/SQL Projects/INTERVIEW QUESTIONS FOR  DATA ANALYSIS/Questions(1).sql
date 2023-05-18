--Here are some SQL interview questions and possible solutions:
--1. Given the following schema, write a query to return the name and salary of employees wwho make more than $50,000.
Employee (id,name,salary)
--Solution
SELECT name, salary
FROM Employee
WHERE salary > 50000;

--2. Write a query to return the number of orders placed by each customer, sorted by the number of orders in descending order. Assume there are two tables: Customers (id, name) and Orders (id, customer_id, date).
SELECT Customers.name, COUNT(Orders.id) AS num_orders
FROM Customers
JOIN Orders ON Customers.id = Orders.customer_id
GROUP BY Customers.id
ORDER BY num_orders DESC;

--3.Write a query to calculate the average rating of each movie in the Movies table. The table has the columns id, title, year, and rating.
SELECT title, AVG(rating) AS avg_rating 
FROM Movies
GROUP BY title;

--4.Write a query to return the top 10 most expensive products in the Products table, sorted by price in descending order. The table has the columns id, name, and price
SELECT name, price
FROM Product
ORDER BY price DESC
LIMIT 10;

--5.Write a query to return the number of unique cities that customers live in, as well as the names of those cities. Assume there are two tables: Customers (id, name, city) and Orders (id, customer_id, date).
SELECT COUNT(DISTINCT Customers.city) AS num_cities, GROUP_CONCAT(DISTINCT Customers.city) AS city_names
FROM Customers
JOIN Orders IN Customers.id = Orders.customer_id;