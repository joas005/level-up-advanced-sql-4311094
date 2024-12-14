-- Find sales people who have zero sales

SELECT
  *
FROM employee
WHERE 1=1
AND employeeID NOT IN (SELECT DISTINCT employeeID FROM sales)
AND title = 'Sales Person';