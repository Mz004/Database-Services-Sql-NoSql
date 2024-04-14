-- ***********************
-- GROUP 02
-- Members: Manav Alpeshbhai Zadafiya, Patel Arth Bimalbhai, Niroopah Bonifus Joseph
-- Stud Id: 144095221                , 141716225           , 181677212
-- Date   : 10-07-2023
-- Purpose: Lab 05 DBS211
-- ***********************

/*
-- Q1 SOLUTION --
--ANSI-89 Join:
SELECT 
  e.employeenumber,
  e.firstname,
  e.lastname,
  o.city,
  o.phone,
  o.postalcode
FROM 
  employees e,
  offices o
WHERE 
  e.officecode = o.officecode
  AND o.country = 'France';

--ANSI-92 Join:
SELECT 
  e.employeenumber,
  e.firstname,
  e.lastname,
  o.city,
  o.phone,
  o.postalcode
FROM 
  employees e
JOIN 
  offices o ON e.officecode = o.officecode
WHERE 
  o.country = 'France';



-- Q2 SOLUTION --
SELECT
  c.customerNumber AS "Customer Number",
  c.customerName AS "Customer Name",
  TO_CHAR(p.paymentDate, 'Mon DD, YYYY') AS "Payment Date",
  p.amount AS "Amount"
FROM
  customers c
JOIN
  payments p ON c.customerNumber = p.customerNumber
WHERE
  c.country = 'Canada'
ORDER BY
  c.customerNumber;



-- Q3 SOLUTION --
SELECT customerNumber, customerName
FROM customers
WHERE country = 'USA'
AND customerNumber NOT IN (
  SELECT DISTINCT customerNumber
  FROM payments
)
ORDER BY customerNumber;



-- Q4 SOLUTION --
CREATE VIEW vwCustomerOrder AS
SELECT
  c.customerNumber AS "Customer Number",
  o.orderNumber AS "Order Number",
  o.orderDate AS "Order Date",
  p.productName AS "Product Name",
  od.quantityOrdered AS "Quantity Ordered",
  od.priceEach AS "Price"
FROM
  customers c
JOIN
  orders o ON c.customerNumber = o.customerNumber
JOIN
  orderdetails od ON o.orderNumber = od.orderNumber
JOIN
  products p ON od.productCode = p.productCode;


SELECT * FROM vwCustomerOrder;



-- Q5 SOLUTION --
SELECT
  "Customer Number",
  "Order Number",
  "Order Date",
  "Product Name",
  "Quantity Ordered",
  "Price"
FROM
  vwCustomerOrder
WHERE
  "Customer Number" = 124
ORDER BY
  "Order Number", 
  rownum;



-- Q6 SOLUTION --
SELECT
  c.customerNumber,
  c.contactFirstName AS "First Name",
  c.contactLastName AS "Last Name",
  c.phone AS "Phone",
  c.creditLimit AS "Credit Limit"
FROM
  customers c
LEFT JOIN
  orders o ON c.customerNumber = o.customerNumber
WHERE
  o.orderNumber IS NULL;



-- Q7 SOLUTION --
CREATE VIEW vwEmployeeManager AS
SELECT
  e1.employeeNumber,
  e1.firstName AS "Employee First Name",
  e1.lastName AS "Employee Last Name",
  e1.email AS "Employee Email",
  e1.jobTitle AS "Employee Job Title",
  e1.officeCode AS "Employee Office Code",
  e1.reportsTo AS "Manager Employee Number",
  e2.firstName AS "Manager First Name",
  e2.lastName AS "Manager Last Name"
FROM
  employees e1
LEFT JOIN
  employees e2 ON e1.reportsTo = e2.employeeNumber;



-- Q8 SOLUTION --
CREATE OR REPLACE VIEW vwEmployeeManager AS
SELECT
  e1.employeeNumber,
  e1.firstName AS "Employee First Name",
  e1.lastName AS "Employee Last Name",
  e1.email AS "Employee Email",
  e1.jobTitle AS "Employee Job Title",
  e1.officeCode AS "Employee Office Code",
  e1.reportsTo AS "Manager Employee Number",
  e2.firstName AS "Manager First Name",
  e2.lastName AS "Manager Last Name"
FROM
  employees e1
INNER JOIN
  employees e2 ON e1.reportsTo = e2.employeeNumber
WHERE
  e1.reportsTo IS NOT NULL;



-- Q9 SOLUTION --
DROP VIEW vwEmployeeManager;
DROP VIEW vwCustomerOrder;



*/
