-- ***********************
-- GROUP 02
-- Members: Manav Alpeshbhai Zadafiya, Patel Arth Bimalbhai, Niroopah Bonifus Joseph
-- Stud Id: 144095221                , 141716225           , 181677212
-- Date   : 10-13-2023
-- Purpose: DBS211 Assignment 01
-- ********************************************************************************************


-- Q1 SOLUTION -- 
SELECT
   employeenumber AS "Employee Number",
   lastname || ', ' || firstname AS "Employee Name",
   phone AS "Phone",
   extension AS "Extension",
   city AS "City",
   'Unknown' AS "Manager ID",
   'Unknown' AS "Manager Name" 
FROM
   employees 
   INNER JOIN
      offices 
      ON employees.officecode = offices.officecode 
WHERE
   employees.reportsto IS NULL 
ORDER BY
   offices.city,
   employees.employeenumber;
          
          
-- Q2 Solution -- 
SELECT
   employeenumber,
   firstname || ' ' || lastname AS "Employee Name",
   phone AS "Phone",
   extension AS "Extension",
   city AS "City" 
FROM
   employees 
   INNER JOIN
      offices 
      ON employees.officecode = offices.officecode 
WHERE
   city IN 
   (
      'NYC',
      'Tokyo',
      'Paris' 
   )
ORDER BY
   offices.city,
   employees.employeenumber;


-- Q3 Solution -- 
SELECT
   e1.employeenumber AS "Employee Number",
   e1.lastname || ', ' || e1.firstname AS "Employee Name",
   offices.phone AS "Phone",
   e1.extension AS "Extension",
   offices.city AS "City",
   e1.reportsto AS "Manager ID",
   e2.firstname || ' ' || e2.lastname AS "Manager Name" 
FROM
   employees e1
   INNER JOIN
      employees e2 
      ON e1.reportsto = e2.employeenumber 
   INNER JOIN
      offices 
      ON e1.officecode = offices.officecode 
WHERE
   offices.city IN 
   (
      'NYC',
      'Tokyo',
      'Paris' 
   )
ORDER BY
   offices.city,
   e1.employeenumber;
   
   
-- Q4 Solution -- 
SELECT
   e1.employeenumber AS "Manager ID",
   e1.firstname || ' ' || e1.lastname AS "Manager Name",
   (
      SELECT
         o.country 
      FROM
         offices o 
      WHERE
         o.officecode = e1.officecode
   )
   AS "Country",
   NVL2(e2.employeenumber, 'Reports to ' || e2.firstname || ' ' || e2.lastname || '(' || e2.jobtitle || ')', 'Does not report to anyone') AS "Reports to" 
FROM
   employees e1 
   LEFT JOIN
      employees e2 
      ON e1.reportsto = e2.employeenumber 
WHERE
   e1.employeenumber IN 
   (
      SELECT DISTINCT
         e3.reportsto 
      FROM
         employees e3 
      WHERE
         e3.reportsto IS NOT NULL
   )
ORDER BY
   "Manager ID";


-- Q5 Solution --
SELECT
   c.customernumber,
   c.customername,
   REPLACE(p.productcode, '_', ' ') as productcode,
   p.msrp AS "OLD Price",
   ROUND(p.msrp * 0.9, 2) AS "New Price" 
FROM
   products p 
   INNER JOIN
      (
         SELECT
            * 
         FROM
            orderdetails 
         where
            quantityordered > 55
      )
      od 
      ON p.productcode = od.productcode 
   INNER JOIN
      orders o 
      on od.ordernumber = o.ordernumber 
   INNER JOIN
      customers c 
      on o.customernumber = c.customernumber 
WHERE
   p.productvendor = 'Exoto Designs' 
ORDER BY
   c.customernumber, p.msrp DESC;


--
SELECT DISTINCT
   c1.customernumber,
   c1.customername 
FROM
   customers c1 
   JOIN
      orders o1 
      ON c1.customernumber = o1.customernumber 
   JOIN
      orders o2 
      ON c1.customernumber = o2.customernumber 
      AND o1.ordernumber <> o2.ordernumber 
ORDER BY
   c1.customernumber;
   
   
-- Q6 Solution B -- 
SELECT
   c.customernumber,
   c.customername 
FROM
   customers c 
   JOIN
      orders o 
      ON c.customernumber = o.customernumber 
WHERE
   c.customernumber NOT IN 
   (
      SELECT DISTINCT
         c1.customernumber 
      FROM
         customers c1 
         JOIN
            orders o1 
            ON c1.customernumber = o1.customernumber 
         JOIN
            orders o2 
            ON c1.customernumber = o2.customernumber 
            AND o1.ordernumber <> o2.ordernumber 
   )
ORDER BY
   c.customernumber;
