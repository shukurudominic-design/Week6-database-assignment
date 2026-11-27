-- =====================================================================
-- Assignment: SQL JOINs (classicmodels database)
-- =====================================================================


-- ---------------------------------------------------------------------
-- Question 1: INNER JOIN - Employees and Offices
-- Retrieves each employee's name, email and office code by matching
-- employees to offices through the officeCode column.
-- ---------------------------------------------------------------------
SELECT
    e.firstName,
    e.lastName,
    e.email,
    e.officeCode
FROM employees AS e
INNER JOIN offices AS o
    ON e.officeCode = o.officeCode;


-- ---------------------------------------------------------------------
-- Question 2: LEFT JOIN - Products and Product Lines
-- Returns every product, along with its matching product line record
-- (if one exists), joined on the productLine column.
-- ---------------------------------------------------------------------
SELECT
    p.productName,
    p.productVendor,
    p.productLine
FROM products AS p
LEFT JOIN productlines AS pl
    ON p.productLine = pl.productLine;


-- ---------------------------------------------------------------------
-- Question 3: RIGHT JOIN - Customers and Orders
-- Returns every order (the right table) with its matching customer
-- (if one exists), joined on customerNumber. Limited to the first 10
-- orders.
-- ---------------------------------------------------------------------
SELECT
    o.orderDate,
    o.shippedDate,
    o.status,
    o.customerNumber
FROM customers AS c
RIGHT JOIN orders AS o
    ON c.customerNumber = o.customerNumber
LIMIT 10;
