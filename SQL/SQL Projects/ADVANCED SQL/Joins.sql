--JOINS IN SQL
-- A join is a way to combine two or more tables based on a related column or set of columns.

--1.Inner Join: An inner join returns only the matching rows between the two tables.
SELECT customers.customer_name, orders.order_date, orders.order_total
FROM customers
INNER JOIN orders
ON customers.customer_id = orders.customer_id;

--2.Left Join: A left join returns all rows from the left table and the matching rows from the right table.
SELECT customers.customer_name, orders.order_date, orders.order_total
FROM customers
LEFT JOIN orders
ON customers.customer_id = orders.customer_id;

--3.Right Join 
SELECT customers.customer_name, orders.order_date, orders.order_total
FROM customers
RIGHT JOIN orders
ON customers.customer_id = orders.customer_id;