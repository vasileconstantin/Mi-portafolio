--Window functions in SQL
--1.ROW_NUMBER()
SELECT name, ROW_NUMBER() OVEER (ORDER BY salary DESC) as row_num
FROM employees;
--This query returns the employees' names and row number based on their salary.

--2.RANK()
SELECT name, RANK() OVER(ORDER BY sales DESC) as rank
FROM salespeople;
-- This query returns the salespeople's names and their rank based on their sales performance, with tied performers receiving the same rank.

--3.DENSE_RANK()
SELECT name, DENSE_RANK() OVER ( ORDER BY sales DESC) as dense_rank 
FROM salespeople;
-- This query returns the salespeople's names and their dense rank based on their sales performance.

--4.LEAD() 
SELECT name, sales, LEAD(sales) OVER (ORDER BY sales DESC) as next_sales
FROM salespeople;
--This query returns the salespeople's names and their sales, along with the sales of the next-highest performer in the result set based on their sales performance.

--5.LAG()
SELECT name, sales , LAG(sales) OVER (ORDER BY sales DESC) as prev_sales
FROM salespeople;
-- This query returns the salespeople's names and their sales, along with the sales of the previous-highest performer in the result set based on their sales performance.