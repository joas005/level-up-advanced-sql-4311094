-- How many cars has been sold per employee

SELECT
  emp.firstName,
  emp.lastName,
  COUNT(sls.inventoryId) AS countSoldCars
FROM employee emp
INNER JOIN sales sls ON emp.employeeId = sls.employeeId
GROUP BY emp.firstName, emp.lastName
ORDER BY 3 DESC