/* check first 10 rows */
SELECT * FROM customers 
LIMIT 10;

/* check how many rows*/
SELECT COUNT(*)
FROM customers;

/* how many customers from each country */
SELECT country, COUNT(*) AS total_customers
FROM customers
GROUP BY country
ORDER BY total_customers DESC;

/*highest and lowest amount spent per country*/
SELECT country, MAX(amount_spent),MIN(amount_spent)
FROM customers
JOIN transactions ON customers.customer_id = transactions.customer_id
GROUP BY country
ORDER BY country ASC;

/******************************************************************/
--Find the maximum number of employees during any shift in the year
SELECT MAX(num_employees)
FROM store_sales;

--Find the smallest number of employees during any shift in the year 
SELECT MIN(num_employees)
FROM store_sales;

--Find the maximum and minimum number of employees during any shift in the year
SELECT MAX(num_employees),MIN(num_employees)
FROM store_sales;

--Find the maximum and minimum number of employees during each month of the year
SELECT month_of_year, MAX(num_employees), MIN(num_employees)
FROM store_sales
GROUP BY month_of_year
ORDER BY month_of_year ASC;

--Find the total number of units sold
SELECT SUM(num_units_sold)
FROM store_sales;

-- Find the total number of units sold and the average number of units sold per month
SELECT month_of_year, SUM(num_units_sold) AS total_units_sold, ROUND(AVG(num_units_sold),2) AS average_units_sold
FROM store_sales
GROUP BY month_of_year
ORDER BY month_of_year ASC;

--Calculate the variance and standard deviation of sales per month
SELECT month, ROUND(AVG(sales),2) AS avg_sales,
VAR_POP(sales) AS variance_sales,
STDDEV_POP(sales) AS std_sales
FROM sales
GROUP BY month
ORDER BY month ASC;

--Calculate the variance and standard deviation of customer age
SELECT VAR_POP(age) AS variance_age,
STDDEV_POP(age) AS std_age
FROM customers;

--Calculate the variance and standard deviation of quiz scores per student
SELECT student_id, ROUND(AVG(quiz_score),2) AS avg_quiz_score,
VAR_POP(quiz_score) AS variance_quiz_score,
STDDEV_POP(quiz_score) AS std_quiz_score
FROM quiz_scores
GROUP BY student_id
ORDER BY student_id ASC;




