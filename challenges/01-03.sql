-- List all customers & their sales, even if some data is gone

SELECT
  cst.firstName,
  cst.lastName,
  S.salesAmount
FROM customer cst
INNER JOIN sales s ON cst.customerId = s.customerId
UNION
-- UNION WITH CUSTOMERS WHO HAVE NO SALES
SELECT
  cst.firstName,
  cst.lastName,
  S.salesAmount
FROM customer cst
LEFT JOIN sales s ON cst.customerId = s.customerId
WHERE s.salesId IS NULL
UNION
-- UNION WITH SALES MISSING CUSTOMER DATA
SELECT
  cst.firstName,
  cst.lastName,
  S.salesAmount
FROM sales s
LEFT JOIN customer cst ON s.customerId = cst.customerId
WHERE cst.customerId IS NULL;


SELECT
  cst.firstName,
  cst.lastName,
  S.salesAmount
FROM customer cst
FULL OUTER JOIN sales s ON cst.customerId = s.customerId