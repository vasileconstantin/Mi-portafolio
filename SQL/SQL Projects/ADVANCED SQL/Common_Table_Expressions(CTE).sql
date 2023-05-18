-- Common Table Expressions(CTE)
WITH sales_data AS ( 
  SELECT 
  	customer_name,
  	order_date,
  	SUM(order_total) AS total_sales
  FROM 
  	orders 
  GROUP BY
  	customer_name,
  	order_date
  )
	
  SELECT 
  	customer_name,
    order_date,
    total_sales
  FROM 
  	sales_data
 
-- Specifies a temporary named result set, known as a common table expression (CTE), that you can reference within a SELECT, INSERT, UPDATE, or DELETE. CTEs are defined using the WITH keyword and can be used to simplify complex queries, improve readability, and enable recursive queries.