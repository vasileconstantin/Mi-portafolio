-- SQL for Exploratory Data Analysis(EDA)
-- 1. Finding the number of unique values in a column
-- Supposing we have a table 'sales_data' with columns 'product', 'region', and 'sales'. We can use SQL to find the number of unique products in the table:
SELECT COUNT(DISTINCT product) FROM sales_data

-- 2.Grouping data by a column and calculating statistics
-- We have a table 'customer_orders' with columns 'customer_id', 'order_date', and 'order_total'. We can use SQL to group the data by customer and calculate the average order total for each customer:
SELECT customer_id, AVG(order_total) AS avg_order_total
FROM customer_orders
GROUP BY customer_id;

-- 3. Filtering data based on a condition 
-- 	We have a table 'employee_data' with columns 'employee_id', 'employee_name', 'hire_date', and 'salary'. We can use SQL to filter the data and return only the records where the salary is greater than $50,000:
SELECT * FROM employee_data WHERE salary > 50000;

-- 4.Finding the maximum and minimum values in a column
-- We have a table 'customer_data' with columns 'customer_id', 'customer_name', and 'customer_age'. Use SQL to find the maximum and minimum ages of the customers in the table.
SELECT MAX(customer_age) AS max_age, MIN(customer_age) AS min_age
FROM customer_data;

-- 5.Joining two tables and filtering the results
-- we have two tables: 'customer_data' with columns 'customer_id', 'customer_name', and 'state', and 'order_data' with columns 'customer_id', 'order_date', and ''order_total'. Use SQL to join the two tables on the 'customer_id' column, and return only the records where the state is "California" and the order total is greater than $100.
SELECT customer_data.customer_name, order_data.order_date, order_data.order_total
FROM customer_data
JOIN order_data
ON customer_data.customer_id = order_data.customer_id
WHERE customer_data.state = 'California' AND order_data.order_total > 100;
