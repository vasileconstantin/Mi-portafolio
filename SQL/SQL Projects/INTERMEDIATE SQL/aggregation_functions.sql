CREATE TABLE employees (
  id SERIAL PRIMARY KEY,
  name VARCHAR(50),
  age INT,
  salary FLOAT
  );
  
  INSERT INTO employees (name, age,salary)
  VALUES 
    ('Alice', 25, 50000),
    ('Bob', 30, 60000),
    ('Charlie', 35, 70000),
    ('Dave', 40, 80000),
    ('Eve', 45, 90000);
    
-- We can use aggreagtion functions to calculate statistics and summarize the data.
SELECT COUNT(*) FROM employees;
-- Returns the number of rows in the table(5 in this case)

SELECT AVG(age) FROM employees;
-- Returns the average age of all the rows in the table ( 35 in this case)

SELECT MIN(salary), MAX(salary) FROM employees;
-- Returns the minimum and maximum salary values in the table (50000 and 90000, respectively)

SELECT SUM(salary) FROM employees WHERE age > 30;
-- Returns the sum of all the salary values for rows where the age is greater than 30 (150000 in this case)

SELECT age, SUM(salary) FROM employees GROUP BY age;
-- This function (GROUP BY) allows us to group rows based on a specific column and perform aggregate calculations on each group

SELECT age , AVG(salary) FROM employees
GROUP BY age
HAVING AVG(salary) > 70000;
-- This function (HAVING) allows us to filter groups based on aggregate calculations.

SELECT COUNT(DISTINCT age) FROM employees;
-- This function allows us to count the number of unique values in a column

SELECT STRING_AGG(name, ', ') FROM employees;
-- This function allows us to concatenate strings from multiple rows into a single string.



  




