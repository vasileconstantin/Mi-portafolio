--CORRELATION AND RANK

SELECT 
	CORR(sales, advertising) AS correlation 
FROM 
	my_sales_table;
    
SELECT 
	product_name,
    RANK() OVER (ORDER BY sales DESC) AS sales_rank
FROM
	my_sales_table;
    
    
SELECT 
	CORR(productivity_score, salary) AS correlation
FROM 
	employee_performance;
    

SELECT 
	customer_name,
    RANK() OVER (ORDER BY order_total DESC) AS order_total_rank
FROM 
	customer_orders;
    
--CORRELATION AND RANK COMBINED
SELECT 
	customer_name,
    sales_total,
    advertising_spend,
    customer_satisfaction,
    CORR(sales_total, advertising_spend) AS correlation,
    RANK() OVER(ORDER BY sales_total DESC) AS sales_rank
FROM 
	sales_data;