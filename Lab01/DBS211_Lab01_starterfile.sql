-- ----------------------------------
-- DBS211 - Lab 01
-- Name: Manav Alpeshbhai Zadafiya
-- StudentID: 144095221
-- Date: 09-08-2023
-- ----------------------------------

-- Question 1
/* How many tables have been created? List the names of the created tables. */
/* 
Eight(8) tables have been created:
  1.CUSTOMERS
  2.EMPLOYEES
  3.OFFICES
  4.ORDERDETAILS
  5.ORDERS
  6.PAYMENTS
  7.PRODUCTLINES
  8.PRODUCTS
*/



-- Question 2
/*Click on table customers. Click on the Data tab near the top of the worksheet. How many rows are there in the table customers?*/
/* 
 122 rows.
*/

-- continue with the rest of the questions


-- Question 3
/*What SQL statement would return the same results. Write the statement in the .sql file and execute it.  
You will learn how to select rows and columns from a table by writing SQL select statements later in this course.*/
/*
Following statement would return the same result:
    SELECT * FROM customers;
*/



-- Question 4
/*How many columns does the customers table have? List the column names.*/
/*
There are 13 columns in customers table which are:
    CUSTOMERNUMBER
    CUSTOMERNAME
    CONTACTLASTNAME
    CONTACTFIRSTNAME
    PHONE
    ADDRESSLINE1
    ADDRESSLINE2
    CITY
    STATE
    POSTALCODE
    COUNTRY
    SALESREPEMPLOYEENUMBER
    CREDITLIMIT
*/



-- Question 5
/*What is the value of each column in the first row in table customers? Write the column name and the column data type in addition to the value.*/
/*
Column                         Value                          datatype
CUSTOMERNUMBER                 103                            NUMBER(38,0)
CUSTOMERNAME                   Atelier graphique              VARCHAR2(50 BYTE)
CONTACTLASTNAME                Schmitt                        VARCHAR2(50 BYTE)
CONTACTFIRSTNAME               Carine                         VARCHAR2(50 BYTE)
PHONE                          40.32.2555                     VARCHAR2(50 BYTE)
ADDRESSLINE1                   54, rue Royal                  VARCHAR2(50 BYTE)
ADDRESSLINE2                   NULL                           VARCHAR2(50 BYTE)
CITY                           Nantes                         VARCHAR2(50 BYTE)
STATE                          NULL                           VARCHAR2(50 BYTE)
POSTALCODE                     44000                          VARCHAR2(15 BYTE)
COUNTRY                        France                         VARCHAR2(50 BYTE)
SALESREPEMPLOYEENUMBER         1370                           NUMBER(38,0)
CREDITLIMIT                    21000                          NUMBER(10,2)
*/



-- Question 6
/*Write the number of rows and columns for the rest of the tables in your schema.  Format it something like the following.
Table Name		  Rows			Columns
__________		 _____			_______
__________		 _____			_______*/
/*
Table Name		      Rows			  Columns
---------------------------------------------
CUSTOMERS             122               13
EMPLOYEES              23                8 
OFFICES                 7                9
ORDERDETAILS         2996                5
ORDERS                326                7
PAYMENTS              273                4
PRODUCTLINES            7                4
PRODUCTS              110                9
*/



-- Question 7
/*Right Click on the orderdetails table and choose tables/count rows.  How many rows does the orderdetails table include?*/
/*
   2996 rows
*/



-- Question 8
/*Write the following SQL statement in the new tab.
desc offices; 
	You can also write
describe offices;
	What is the result of the statement execution?*/
/*
The given SQL statement provides information about the "offices" table's structure, including column names, data types, 
and any additional constraints associated with the columns as below.

Name         Null?    Type         
------------ -------- ------------ 
OFFICECODE   NOT NULL VARCHAR2(10) 
CITY         NOT NULL VARCHAR2(50) 
PHONE        NOT NULL VARCHAR2(50) 
ADDRESSLINE1 NOT NULL VARCHAR2(50) 
ADDRESSLINE2          VARCHAR2(50) 
STATE                 VARCHAR2(50) 
COUNTRY      NOT NULL VARCHAR2(50) 
POSTALCODE   NOT NULL VARCHAR2(15) 
TERRITORY    NOT NULL VARCHAR2(10)
*/



-- Question 9
/*Type the following statements in, execute them, then briefly describe what the statement is doing!
SELECT * FROM employees;
SELECT * FROM customer ORDER BY ContactLastName;*/
/*
"SELECT * FROM employees;" SQL statement retrieves all rows and columns from the "employees" table. It essentially returns the entire contents of the "employees" table, 
including all employee records and all 8 columns associated with those records.

"SELECT * FROM customer ORDER BY ContactLastName;" SQL statement retrieves all rows and columns from the "customers" table and 
arranges them alphabetically by their last names. 
The 'ORDER BY' is used to specify the sorting order, and in this case, it's sorting the results in ascending order(by default) based on the "ContactLastName" column. 
*/



-- Question 10
/*How many constraints does the products table have?*/
/*
11 constraints.
*/


-- Question 11
/*Find a way to turn on the line numbers in the gutter.*/
/*
Following are the steps to turn on the line numbers in the gutter:
  Go to 'Tools' menu at top 
  Click on prefrence
  In prefrence tab, select 'code editor' to expand
  In code editor, click on 'Line Gutter'
  and then click on check box 'show line numbers'.
*/



-- Question 12
/*Set the font size in the worksheet editor to a size that is best for you.  (Hint: Tools/Preferences)*/
/*
Following are the steps to set font size in worksheet editor:
  Go to 'Tools' menu at top
  Click on prefrence
  In prefrence tab, select 'code editor' to expand
  In code editor, click on 'Fonts'
  and then adjust the font size that fits best.(For me its 12) 
*/