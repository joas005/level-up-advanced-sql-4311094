-- Create a list of employees and their immediate managers.

SELECT
  emp.employeeId,
  emp.firstName,
  emp.title,
  mng.firstName AS manager
FROM Employee emp
INNER JOIN Employee mng ON emp.managerId = mng.managerId