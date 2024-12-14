-- Displays the number of cars sold this month, and last month

SELECT
  STRFTIME('%m/%Y', soldDate) AS monthYear,
  COUNT(salesId) AS countSales,
  LAG (COUNT(*), 1, 0 ) OVER calMonth AS LastMonthCarsSold
FROM sales
GROUP BY monthYear
WINDOW calMonth AS (ORDER BY strftime('%Y-%m', soldDate))
ORDER BY soldDate DESC


