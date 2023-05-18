--Percentiles in SQL

/*
Percentiles: Dividing a population into 100 equal groups; each group contains the same percentage of data.
Using percentiles, we can analyze the distribution of data by grouping values into equal-sized buckets.
There are two types of percentiles: Discrete and Continuous.

Discrete Percentile: Returns a value that exists in the column. It's useful when you want to know the value in the column that falls into a percentile.

Continuous Percentile: Interpolates the boundary value between the percentiles. It's useful when you want to know what the value is at the boundary between two percentile buckets.


*/

--Calculating the median of a column
SELECT 
	PERCENTILE_DISC(0.5) WITHIN GROUP (ORDER BY sales_data) AS median_value
FROM sales;

--Calculating quartiles of a column
SELECT 
	PERCENTILE_DISC(0.25) WITHIN GROUP (ORDER BY sales_data) AS q1_value,
    PERCENTILE_DISC(0.5)  WITHIN GROUP (ORDER BY sales_data) AS median_value,
    PERCENTILE_DISC(0.75) WITHIN GROUP (ORDER BY sales_data) AS q3_value
FROM sales;

--Calculating deciles of a column
SELECT
PERCENTILE_DISC(0.1) WITHIN GROUP (ORDER BY sales_data) AS p10_value,
PERCENTILE_DISC(0.2) WITHIN GROUP (ORDER BY sales_data) AS p20_value,
PERCENTILE_DISC(0.3) WITHIN GROUP (ORDER BY sales_data) AS p30_value,
PERCENTILE_DISC(0.4) WITHIN GROUP (ORDER BY sales_data) AS p40_value,
PERCENTILE_DISC(0.5) WITHIN GROUP (ORDER BY sales_data) AS p50_value,
PERCENTILE_DISC(0.6) WITHIN GROUP (ORDER BY sales_data) AS p60_value,
PERCENTILE_DISC(0.7) WITHIN GROUP (ORDER BY sales_data) AS p70_value,
PERCENTILE_DISC(0.8) WITHIN GROUP (ORDER BY sales_data) AS p80_value,
PERCENTILE_DISC(0.9) WITHIN GROUP (ORDER BY sales_data) AS p90_value
FROM sales;

