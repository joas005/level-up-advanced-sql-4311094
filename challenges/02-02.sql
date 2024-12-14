-- Find the least and most expensive car sold by each employee this year

SELECT
  emp.firstName,
  emp.lastName,
  MAX(sls.salesAmount) AS mostExepensive,
  MIN(sls.salesAmount) AS leastExpensive
FROM employee emp
INNER JOIN sales sls ON emp.employeeId = sls.employeeId
WHERE sls.soldDate >= date('2022-01-01')
GROUP BY emp.firstName, emp.lastName