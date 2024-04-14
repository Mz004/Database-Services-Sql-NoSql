-- ***********************
-- GROUP 02
-- Members: Manav Alpeshbhai Zadafiya, Patel Arth Bimalbhai, Niroopah Bonifus Joseph
-- Date   : 09-22-2023
-- Purpose: Lab 03 DBS211
-- ***********************

-- Q1 SOLUTION --
/*
SELECT officecode, city, state, country, phone
FROM offices;
*/



-- Q2 Solution –
/*
SELECT employeenumber, firstname, lastname, extension
FROM employees
WHERE officecode = 1
ORDER BY employeenumber;
*/


-- Q3 SOLUTION --
/*
SELECT customernumber, customername, contactfirstname, contactlastname, phone
FROM customers
WHERE LOWER(city) = 'paris'  
ORDER BY customernumber;
*/



-- Q4 SOLUTION --
/*
SELECT customernumber, customername, contactlastname || ', ' || contactfirstname AS contactname, phone
FROM customers
WHERE LOWER(country) = 'canada' 
ORDER BY customername;
*/



-- Q5 SOLUTION --
/*
SELECT DISTINCT customernumber
FROM payments
ORDER BY customernumber
FETCH FIRST 10 ROWS ONLY;
*/



-- Q6 SOLUTION --
/*
SELECT customernumber, checknumber, amount
FROM payments
WHERE amount NOT BETWEEN 1500 AND 120000
ORDER BY amount DESC;
*/


-- Q7 SOLUTION --
/*
SELECT ordernumber,orderdate,status,customernumber 
FROM orders
WHERE Lower(status) = 'cancelled'
ORDER BY orderdate;
*/



-- Q8 SOLUTION --
/*
Select productcode,productname,buyprice,msrp,(msrp-buyprice) as markup,
ROUND((msrp-buyprice)/buyprice*100,1) as percmarkup
FROM products
WHERE (((msrp-buyprice)/buyprice)*100) > 140
ORDER BY percmarkup;
*/



-- Q9 SOLUTION --
/*
SELECT productcode, productname, quantityinstock
FROM products
WHERE LOWER(productname) LIKE '%co%'
ORDER BY quantityinstock;
*/



-- Q10 SOLUTION --
/*
SELECT customernumber, contactfirstname, contactlastname
FROM customers
WHERE LOWER(contactfirstname) LIKE 's%e%' 
   OR UPPER(ContactFirstName) LIKE 'S%E%'
ORDER BY customernumber;
*/