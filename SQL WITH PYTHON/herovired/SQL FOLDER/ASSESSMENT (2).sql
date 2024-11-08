-- Exercise 1


-- Create a database schema for the online consultation and therapy website. The database should contain the following tables:-
-- NOTE:- Use proper constraints on the attributes such as primary key, not null and etc.

create database consul_and_therapy_website;

-- Doctor table:- The table should contain the attributes such as id, name, specialization, etc.

CREATE TABLE DOCTOR(
ID INT PRIMARY KEY NOT NULL,NAME VARCHAR(40) NOT NULL,SPECIALIZATION VARCHAR(30) NOT NULL
);
INSERT INTO DOCTOR VALUES (1001,"PREETHI","CARDIOLOGIST"),(1002,"NIKHIL","ALLERGIST"),(1003,"PRATHYUSHA","DENTIST"),(1004,"PRAGATHI","DERMOTOLOGIST");


-- Appointments table:- The table should contain information related to appointments set up by doctors and patients.

CREATE TABLE APPOINTMENTS(
TOKEN_NO INT PRIMARY KEY NOT NULL,APPOINTMENT_DATE DATE NOT NULL,DURATION INT NOT NULL
);

INSERT INTO APPOINTMENTS VALUES (1,"2023-05-23",20),(2,"2023-05-24",10),(3,"2023-05-25",20),(4,"2023-05-29",30);

-- Patient table:- The table should contain information on patients.

CREATE TABLE PATIENT(
TOKEN_NO INT NOT NULL ,FOREIGN KEY (TOKEN_NO) REFERENCES APPOINTMENTS(TOKEN_NO) ,PATIENT_NAME VARCHAR(40) NOT NULL,DOB DATE NOT NULL,GENDER VARCHAR(30) NOT NULL
);
INSERT INTO PATIENT VALUES (1,"NANDINI","2001-09-1","F"),(2,"NIKHILA","1993-03-19","F"),(3,"PREETHAM","2014-02-20","M"),(4,"GANESH","2000-07-20","M");

-- Reviews table:- This table should contain reviews posted by patients.

CREATE TABLE REVIEWS(
PATIENT_NAME VARCHAR(20) NOT NULL,RATING FLOAT, REVIEW_DATE DATE NOT NULL
);

INSERT INTO REVIEWS VALUES("NANDINI",80.89,"2023-05-23"),("NIKHILA",90.00,"2023-05-24"),("PREETHAM",100.00,"2023-05-25"),("GANESH",89.45,"2023-05-29");

-- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- EXCERCISE 2:


CREATE TABLE CONTACT(
ID INT PRIMARY KEY,EMAIL VARCHAR(40) NOT NULL UNIQUE,FNAME VARCHAR(30) NOT NULL,LNAME VARCHAR(40) NOT NULL,COMPANY VARCHAR(40) NOT NULL,ACTIVE_FLAG INT ,OPT_OUT INT); 

INSERT INTO CONTACT VALUES(123,"a@a.com","Kian","Seth","ABC",1,1),(133,"b@a.com","Neha","Seth","CDF",1,0),(234,"c@c.com","Puru","Malik","CDF",0,0),(342,"d@d.com","Sid","Maan","TEG",1,0);

-- 1) Select all columns from the contact table where the active flag is 1.

SELECT * FROM CONTACT WHERE ACTIVE_FLAG=1;

-- 2) Deactivate contacts who are opted out .

DELETE FROM CONTACT WHERE OPT_OUT=0 ;

-- 3)Delete all the contacts who have the company name as ‘ABC’.

DELETE FROM CONTACT WHERE COMPANY="ABC";

-- 4) Insert a new row with id as 658, name as ‘mili’, email as ‘mili@gmail.com’, the company as ‘DGH’, active flag as 1, opt-out flag as 1.

INSERT INTO CONTACT VALUES(658,"mili@gmailcom","MILI","SAITH","DGH",1,1);

-- 5)Pull out the unique values of the company column .

SELECT DISTINCT COMPANY FROM CONTACT;
-- 6)Update name “mili” to “niti”.

UPDATE CONTACT SET FNAME="NITI" WHERE FNAME="MILI";

-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Exercise 3 (10 marks):

-- Write a SQL query to find those customers with a grade less than 100. It should return cust_name, customer city, grade, salesman, and salesman city. The result should be ordered by ascending customer_id.

CREATE TABLE CUSTOMER(
CUSTOMER_ID INT NOT NULL,CUST_NAME VARCHAR(30),CITY VARCHAR(40),GRADE VARCHAR(20),SALESMAN_ID INT NOT NULL);

INSERT INTO CUSTOMER VALUES(3002,"Nick Rimando","New York",100,5001),(3007,"Brad Davis","New York",200,5001),(3005,"Graham Zusi","California",200,5002),(3008,"Julian Green","London",300,5002);
INSERT INTO CUSTOMER VALUES(3004,"Fabian Johnson","Paris",300,5006),(3009,"Geoff Cameron","Berlin",100,5003),(3003,"Jozy Altidor","Moscow",200,5007),(3001,"Brad Guzan","London","90",5005);
INSERT INTO CUSTOMER VALUES(3001,"Brad Guzan","London","NULL",5005);
INSERT INTO CUSTOMER VALUES(3001,"Brad Guzan","London",90,5005);

CREATE TABLE SALESMAN(
SALESMAN__ID INT NOT NULL,NAME VARCHAR(30),CITY VARCHAR(40),COMMISSION FLOAT);

INSERT INTO SALESMAN VALUES(5001,"James Hoog","New York",0.15),(5002,"Nail Knite","Paris",0.13),(5005,"Pit Alex","London",0.11),(5006,"Mc Lyon","Paris",0.14),(5007,"Paul Adam","Rome",0.13),(5003,"Lauson Hen","San Jose",0.12);


 SELECT CUSTOMER.CUST_NAME,CUSTOMER.CITY,CUSTOMER.GRADE,SALESMAN.SALESMAN__ID,SALESMAN.CITY FROM CUSTOMER INNER JOIN SALESMAN ON CUSTOMER.SALESMAN_ID=SALESMAN.SALESMAN__ID WHERE GRADE<100 ORDER BY CUSTOMER.CUSTOMER_ID;

