-- ***********************
-- GROUP 02
-- Members: Manav Alpeshbhai Zadafiya, Patel Arth Bimalbhai, Niroopah Bonifus Joseph
-- Stud Id: 144095221                , 141716225           , 181677212
-- Date   : 10-14-2023
-- Purpose: Lab 06 DBS211
-- ***********************

/*
SET AUTOCOMMIT ON; 

--SOLUTION 01--
CREATE TABLE L6_MOVIES (
    mid INT PRIMARY KEY,
    title VARCHAR(35) NOT NULL,
    releaseYear INT NOT NULL,
    director INT NOT NULL,
    score DECIMAL(3,2) CHECK (score > 0 AND score < 5)
);

CREATE TABLE L6_ACTORS (
    aid INT PRIMARY KEY,
    firstName VARCHAR(20) NOT NULL,
    lastName VARCHAR(30) NOT NULL
);

CREATE TABLE L6_CASTINGS (
    movieid INT,
    actorid INT,
    PRIMARY KEY(movieid, actorid),
    CONSTRAINT cast_movie_fk FOREIGN KEY (movieid) REFERENCES L6_MOVIES(mid) ON DELETE CASCADE,
    CONSTRAINT cast_actor_fk FOREIGN KEY (actorid) REFERENCES L6_ACTORS(aid) ON DELETE CASCADE
);

CREATE TABLE L6_DIRECTORS (
    directorid INT PRIMARY KEY,
    firstname VARCHAR(20) NOT NULL,
    lastname VARCHAR(30) NOT NULL
);



--SOLUTION 02--
ALTER TABLE L6_MOVIES
ADD CONSTRAINT movie_dir_fk FOREIGN KEY(director) REFERENCES L6_DIRECTORS(directorid);



--SOLUTION 03--
ALTER TABLE L6_MOVIES
ADD CONSTRAINT title UNIQUE(title);



--SOLUTION 04--
INSERT INTO L6_Directors(directorid, firstname, lastname)
VALUES(1010, 'Rob', 'Minkoff');
INSERT INTO L6_directors(directorid, firstname, lastname)
VALUES(1020,'Bill','Condon');
INSERT INTO L6_Directors(directorid, firstname, lastname)
VALUES(1050, 'Josh', 'Cooley');
INSERT INTO L6_Directors(directorid, firstname, lastname)
VALUES(2010, 'Brad', 'Bird');
INSERT INTO L6_Directors(directorid, firstname, lastname)
VALUES(3020, 'Lake', 'Bell');

INSERT INTO L6_MOVIES(mid, title, releaseYear, director, score)
VALUES(100, 'The Lion King', 2019, 3020, 3.50);
INSERT INTO L6_MOVIES(Mid, Title, releaseYear, director, score)
VALUES(200,'Beauty and the Beast', 2017, 1050, 4.20);
INSERT INTO L6_MOVIES(Mid, Title, releaseYear, director, score)
VALUES(300, 'Toy Story 4', 2019, 1020, 4.50);
INSERT INTO L6_MOVIES(Mid, Title, releaseYear, director, score)
VALUES(400, 'Mission Impossible', 2018, 2010, 5.00);
INSERT INTO L6_MOVIES(Mid, Title, releaseYear, director, score)
VALUES(500, 'The Secret Life of Pets', 2016, 1010, 3.90); 



--SOLUTION 05--
DROP TABLE L6_CASTINGS CASCADE CONSTRAINTS;
DROP TABLE L6_ACTORS CASCADE CONSTRAINTS;
DROP TABLE L6_MOVIES CASCADE CONSTRAINTS;
DROP TABLE L6_DIRECTORS CASCADE CONSTRAINTS;

--Yes. In this case there are foreign key constraints that define relationships between tables. 
--Due to this we need to delete tables in a sequence that respects the dependencies between them.   
--So, it is important to drop table in order that does not violate any foreign key constraints. 

--Removing child table first and then parent tables can help us to avoid any issues related to 
--these constraints while cleaning up.



--SOLUTION 06--
CREATE TABLE employee2 AS 
    SELECT *  FROM employees;



--SOLUTION 07--
ALTER TABLE employee2 ADD username VARCHAR(50);



--SOLUTION 08--
DELETE FROM employee2;


   
--SOLUTION 09--
INSERT INTO employee2(employeenumber, lastname, firstname, extension, email, officecode, reportsto, jobtitle) 
    SELECT
      employeenumber,
      lastname,
      firstname,
      extension,
      email,
      officecode,
      reportsto,
      jobtitle 
    FROM
      employees; 



--SOLUTION 10--
UPDATE employee2 
SET firstname = 'Harold', lastname = 'Talavera' 
WHERE employeenumber = 1002;



--SOLUTION 11--
UPDATE employee2 
SET username = LOWER(SUBSTR(firstname, 0, 1) || lastname);



--SOLUTION 12--
DELETE FROM employee2 a 
WHERE
   a.reportsto IN (
      SELECT
         b.employeenumber 
      FROM
         employee2 b 
      WHERE
         b.officecode = 4 
   );

DELETE FROM employee2 
WHERE officecode = 4;



--SOLUTION 13--
DROP TABLE employee2;
*/