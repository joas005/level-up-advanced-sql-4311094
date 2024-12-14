-- Summarise sales per year by using a CTE
-- SELECT soldDate FROM sales

WITH CTE AS (
  SELECT
    STRFTIME('%Y', soldDate) AS yearSale,
    FORMAT("$%.2f", SUM(salesAmount)) AS sumSalesAmount
  FROM sales sls
  GROUP BY 1
)

SELECT * FROM CTE