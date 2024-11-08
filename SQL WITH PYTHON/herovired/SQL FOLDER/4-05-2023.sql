-- QUESTION 1
-- Write the queries for the following tasks - 
-- Create a database name - “Employee”.
-- Create a table name - “Employee Details”.
-- Insert 10 details in the “Employee Details” table  - Emp_id,Emp_name,Job_name,Manager_id,Hire_date,SalaryDep_id


-- Sample Output - 

-- --------+----------+-----------+------------+------------+---------+----------+---------+-----------
-- 68319 |   Mr. Singh  |   PRESIDENT |      68319      | 1991-11-18 | 6000 |  1001

CREATE DATABASE EMPLOYEE;

CREATE TABLE EMPLOYEE_DETAILS(
EMP_ID INT PRIMARY KEY,
EMP_NAME VARCHAR(20),
JOB_NAME VARCHAR(20),
MANAGER_ID INT,
HIRE_DATE DATE,
SALARY INT,
DEP_ID int);

INSERT INTO EMPLOYEE_DETAILS VALUES(68319,"Mr. Singh","PRESIDENT",68319,"1991-11-18",6000,1001),(68312,"Mr. LAL SIGH","VICE-PRESIDENT",68313,"1992-11-18",6001,1002),(68320,"MS.PREETHI","PRIME MINISTER",68320,"1991-11-12",6002,1003),(68310,"MS.PRANNETHA","CM",68316,"1991-1-18",6003,1004);
INSERT INTO EMPLOYEE_DETAILS VALUES(68311,"RAJ","PRESIDENT",68311,"1991-11-18",6000,1008);
-- 1) Find the salaries of all the employees from the “Employee Details” table.
-- ANS:
SELECT SALARY FROM EMPLOYEE_DETAILS;

-- 2)Find the unique designations of the employees from the table.
-- ANS:
SELECT  DISTINCT JOB_NAME FROM EMPLOYEE_DETAILS;

-- 3)Change the salary where the emp_name is “Raj”.
-- ANS:
UPDATE EMPLOYEE_DETAILS SET SALARY = 100000 WHERE EMP_NAME = "RAJ";

-- QUESTION 2
--	Write the queries for the following tasks - 
-- Create a database name - “Football”.
-- Create a table name - “Football Venue”.
-- Insert 10 details in the “Football Venue” table  - venue_id,venue_name,city_id,capacity

-- Sample Output - 
-- venue_id |       venue_name        | city_id | capacity
-- -------------+-----------------------------+----------+----------
 --   20001 |             France               |   10003 |  42115


CREATE DATABASE FOOTBALL;

CREATE TABLE FOOTBALL_VENUE(
VENUE_ID INT,
VENUE_NAME VARCHAR(20),
CITY_ID INT,
CAPACITY INT
);

INSERT INTO FOOTBALL_VENUE VALUES(20001,"France",10003,42115),(20002,"Italy",10002,42116),(20003,"Paris",10004,42114),(20005,"Australia",10008,42117);

-- 4)Count the number of venues of the football world cup
-- ANS:
SELECT COUNT(VENUE_NAME) FROM FOOTBALL_VENUE;

-- 5)List all the venue names and capacities in the format of “Location” and “Volume”.

SELECT VENUE_NAME AS Location, CAPACITY AS Volume from FOOTBALL_VENUE;
-- 6)Delete all the details where venue_name is equal to “Australia” 
-- ANS:
DELETE FROM FOOTBALL_VENUE WHERE VENUE_NAME="Australia";
SELECT * FROM FOOTBALL_VENUE;


-- ---------------------------------------------------------------------------------------
-- VIEWS- 1) IT IS A VIRTUAL TABLE

SHOW DATABASES;

SELECT * FROM CUSTOMER;

CREATE VIEW NEW_CUSTOMER AS SELECT * FROM CUSTOMER;-- VIEW IS LIKE DUPLICATE TABLE
SELECT * FROM NEW_CUSTOMER;-- IT IS NOT A TABLE BUT ACTS AS TABLE

CREATE VIEW NEW_VIEW AS SELECT NAME,CITY FROM CUSTOMER WHERE CITY="DELHI";-- CREATING NEW VIEW ONLY FOR NAME AND CITY
SELECT * FROM NEW_VIEW;

-- -----------------------------------------------------------------------------------------------------
-- INDEX: IF WE WANT USE ANY PARTICULAR ENTRY, WE WANT TO SEPERATE IT

CREATE INDEX PREETHI ON CUSTOMER(CITY);-- CREATE INDEX INDEX_NAME ON TABLE(ATTRIBUTE);
