-- ***********************
-- GROUP 02
-- Members: Manav Alpeshbhai Zadafiya, Patel Arth Bimalbhai, Niroopah Bonifus Joseph
-- Stud Id: 144095221                , 141716225           , 181677212
-- Date   : 09-30-2023
-- Purpose: Lab 04 DBS211
-- ***********************

/*
SET AUTOCOMMIT ON;

-- Q1 SOLUTION --
CREATE TABLE employee2 AS 
SELECT * FROM employees 
WHERE 1 = 0;




-- Q2 SOLUTION --
ALTER TABLE employee2 
ADD username VARCHAR2(100);




-- Q3 SOLUTION --
DELETE FROM employee2;




-- Q4 SOLUTION --
INSERT INTO employee2(employeenumber,lastname,firstname,extension,email,officecode,reportsto,jobtitle)
SELECT * FROM employees;

ALTER TABLE employee2 ADD CONSTRAINT pk_employee2_employeenumber PRIMARY KEY (employeenumber);
ALTER TABLE employee2 ADD CONSTRAINT fk_employee2_reportsto FOREIGN KEY (reportsto) REFERENCES employee2 (employeenumber);
ALTER TABLE employee2 ADD CONSTRAINT fk_employee2_officecode FOREIGN KEY (officecode) REFERENCES offices (officecode);




-- Q5 SOLUTION --
INSERT INTO employee2(employeenumber,lastname,firstname,extension,email,officecode,reportsto,jobtitle)
VALUES (1703,'Patel','Arth','x2222','parth-bimalbhai@myseneca.ca',4,1088,'cashier');




-- Q6 SOLUTION --
SELECT * FROM employee2 
WHERE employeeNumber = 1703;




-- Q7 SOLUTION --
UPDATE employee2
SET jobtitle = 'Head Cashier'
WHERE employeenumber = 1703;




-- Q8 SOLUTION --
INSERT INTO employee2(employeenumber,lastname,firstname,extension,email,officecode,reportsto,jobtitle)
VALUES (1704,'Manav','Zadafiya','x2223','mazadafiya@myseneca.ca',4,1703,'cashier');




-- Q9 SOLUTION --
DELETE FROM employee2 
WHERE employeenumber = 1703;

No, this time above statement did not worked because the record in the table is refrenced to
reportsto column. Foregin key constraint didn't allow us to delete the row.




-- Q10 SOLUTION --
DELETE FROM employee2 
WHERE employeenumber = 1704;
   
DELETE FROM employee2 
WHERE employeenumber = 1703;

yes, it worked. After deleting the fake employee number which was refrenced to employee number with foregin key refrenece. 
it allows us to delete the row.




-- Q11 SOLUTION --
INSERT INTO employee2 (employeeNumber, lastName, firstName, extension, email, officeCode, reportsTo, jobTitle, username)
SELECT 1703,'Patel','Arth','x2222','parth-bimalbhai@myseneca.ca',4,1088,'cashier', NULL FROM dual
UNION ALL
SELECT 1704,'Manav','Zadafiya','x2223','mazadafiya@myseneca.ca',4,1088,'cashier', NULL FROM dual;




-- Q12 SOLUTION --
DELETE 
FROM employee2
WHERE employeenumber IN (1703,1704);




-- Q13 SOLUTION --
UPDATE employee2
SET username = LOWER(SUBSTR(firstName, 1, 1) || lastName);




-- Q14 SOLUTION --
DELETE FROM employee2
WHERE officeCode = 4;

No, it didn't allow us to delete row due to foreign key constraint.
Employee is refrenced to another employee's reportsto with FK relation.




-- Q15 SOLUTION --
DROP TABLE employee2;
*/