-- Create a report showing sales per month and an annual total

WITH cte_sales AS (SELECT
  STRFTIME('%Y', soldDate) AS year,
  STRFTIME('%m', soldDate) AS month,
  SUM(salesAmount) AS totalSales
FROM sales
GROUP BY year, month
ORDER BY year, month
)
SELECT 
  year, 
  month, 
  totalSales,
  SUM(totalSales) OVER (
    PARTITION BY year 
    ORDER BY year, month) AS AnnualSales_RunningTotal
FROM cte_sales
ORDER BY year, month