-- For each sales person rank the car models they've sold most

SELECT
  emp.firstName,
  emp.lastName,
  mdl.model,
  COUNT(sls.salesId) AS countSalesModel,
  RANK() OVER(PARTITION BY sls.employeeId 
              ORDER BY count(model) desc) AS Rank
FROM employee emp
INNER JOIN sales sls ON emp.employeeId = sls.employeeId
INNER JOIN inventory inv ON sls.inventoryId = inv.inventoryId
INNER JOIN model mdl ON inv.modelId = mdl.modelId
GROUP BY emp.firstName, emp.lastName, mdl.model
ORDER BY 5 