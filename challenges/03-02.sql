-- Display cars sold for each employee by month

SELECT
  emp.firstName,
  STRFTIME('%m/%Y', soldDate) AS monthYear,
  SUM(salesAmount) AS salesAmount
FROM employee emp
INNER JOIN sales sls ON emp.employeeId = sls.employeeId
GROUP BY emp.firstName, monthYear
ORDER BY monthYear, salesAmount DESC;