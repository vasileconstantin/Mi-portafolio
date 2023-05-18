-- Subqueries
-- Let's say we have two tables: "orders" and "customers". The "orders" table contains information about each order, including the customer ID of the person who placed the order. The "customers" table contains information about each customer, including their name and email address.
--We want to find all customers who have placed an order in the past month. To do this, we can use a subquery to first find all orders placed in the past month, and then join that result with the "customers" table to get the customer information.
--Here's an example SQL query that does this:

SELECT name, email
FROM customers 
WHERE customer_id IN (
  SELECT customer_id
  FROM orders
  WHERE order_date >= DATEADD(month, -1, GETDATE()))

--We have the following two tables 'student' and 'marks' with common field 'StudentID'
SELECT a.studentid, a.name , b.total_marks
FROM student a , marks b
WHERE a.studentid = b.studentid AND b.total_marks >
(SELECT total_marks 
 FROM marks
 WHERE studentid = 'V002');
  

 