-- Display report for employees who have sold at least 5 cars

SELECT
  emp.firstName,
  emp.lastName,
  COUNT(sls.salesId) AS countSales
FROM employee emp
INNER JOIN sales sls ON emp.employeeId = sls.employeeId
GROUP BY emp.firstName, emp.lastName
HAVING COUNT(sls.salesId) >= 5
ORDER BY 3 DESC