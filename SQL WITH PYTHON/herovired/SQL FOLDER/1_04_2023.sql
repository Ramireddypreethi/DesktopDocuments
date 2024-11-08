show databases; -- get all the databases present in the schemas
select * from  rgm;

-- changing name with contact no. 241442
update rgm set Name="varun" where contact_no=241442; -- it gives safe update error

-- we have to make some changes in sql work bench 
-- goto edit
      -- goto preferences
         -- goto sql editor
             -- uncheck the safe update and click on ok
-- later refresh sql workbench i.e close the tab and open again.

update rgm set Name="varun" where contact_no=241442;-- know table is uddated

select * from rgm;

update rgm set session="java" and college="srm" where contact_no=24149394; -- for and it gives error

update rgm set session="java",college="srm" where contact_no=24149394;-- updating multipule values
-- COPYING DATA FROM ONE TO ANOTHER IN SAME DATABASE

select * from student;

create table test(
studentID int primary key not null,
student_name varchar(30) not null,
student_contact int not null,
student_dept varchar(30) not null
);
select * from test;-- now table is empty

insert into test select * from student;-- exactly all the data is copied from student table to test table.
                                       -- In this while copying no of fields should be same in both tables
                                       -- Both tables should be in same database
select * from test;
-- -----------------------------------------------
SELECT * FROM TEST;
 
 TRUNCATE TABLE TEST;-- DELETE ENTIRE DATA NO TABLE STRUCTURE.
 
 -- ------------------------------------
 SELECT * FROM STUDENT;
  
DELETE FROM STUDENT WHERE STUDENT_NAME="PANDU";-- DELETING PARTICULAR ROW INSTEAD OF ENTIRE COLUMN
 
 -- ----------------------------------------
 DROP TABLE TEST;-- DELETING ENTIRE TABLE STRUCTURE.
 
 SELECT * FROM TEST;-- WE WILL GET TABLE 'RGM.TEST' DOESNOT EXIT
 
 -- ---------------------------------------
 SELECT * FROM STUDENT;
 
 ALTER TABLE STUDENT RENAME COLUMN STUDENT_NAME TO NAME;-- RENAMING OLD COLUMNNAME TO NEW COLUMN NAME
 
 -- ------------------------------------------
 ALTER TABLE STUDENT RENAME TO RGM_STUDENT;-- CHANGING NAME OF STUDENT TABLE TO RGM_STUDENT TABLE.
 
 -- -----------------------------------------------
 
 -- TO CHANGE ANY COLUMN DATATYPE WE USE ALTER
 -- TO CHANGE ANY COLUMN DATA WE USE MODIFY
 CREATE DATABASE PREETHI;
 SHOW DATABASES;
DROP DATABASE PREETHI;-- TO DROP THE DATABASE 

-- ------------------------------------------

ALTER TABLE RGM_STUDENT ADD ADDRESS VARCHAR(30);-- CREATING NEW COLUMN
 SELECT * FROM RGM_STUDENT;
 
 UPDATE RGM_STUDENT SET ADDRESS="NELLORE" WHERE studentID=502;-- ADD DATA TO NEW COLUMN
 
 ALTER TABLE RGM_STUDENT MODIFY COLUMN ADDRESS VARCHAR(50);-- TO CHECK MODIFIED DATATYPE GOTO NEAR TABLES ON RIGHT HAND SIDE AND CLICK ON RGM_STUDENT TABLE ON LEFT OF IT CLICK ON "I" BUTTON WE GET "INFO" ,THEN CLICK ON THE COLUMNS WE CAN SEE CHANGED DATATYPE.
 
 ALTER TABLE RGM_STUDENT DROP COLUMN ADDRESS;-- DELETING PARTICULAR COLUMN.
 
 SELECT * FROM RGM_STUDENT;
 
 ALTER TABLE RGM_STUDENT DROP COLUMN NAME, DROP COLUMN studentID;-- TO DELTE MULTIPLE COLUMNS
 -- -------------------------------------
 DELETE FROM RGM_STUDENT;-- DELETE ENTIRE STRUCTURE
 -- ----------------------------
 SELECT MIN(MARKS) FROM STUDENT1;

 SELECT MIN(MARKS) FROM STUDENT1;
SELECT AVG(MARKS) FROM STUDENT1;
 SELECT SUM(MARKS) FROM STUDENT1;
 SELECT SUM(MARKS) AS TOTAL FROM STUDENT1;-- CHANGING COL NAME IN OUTPUT.
 SELECT COUNT(MARKS) FROM STUDENT1;
 -- ---------------------------
 CREATE DATABASE EXCERCISE;
 CREATE TABLE CUSTOMER(
 C_ID INT PRIMARY KEY,NAME VARCHAR(40),CITY VARCHAR(20),GRADE INT,ID INT);
 
 INSERT INTO CUSTOMER VALUES(101,"PREETHI","DELHI",98,5001),(102,"VARUN","BENGALURE",94,5002),(103,"NIKHIL","ASSOM",99,5003),(104,"ARJUN","LOHORE",88,5004),(105,"PRAKRUTHI","NELLORE",38,5005),(106,"RISHI","KOLKATA",55,5006),(107,"CHAITANYA","DELHI",23,5007);
 
 SELECT * FROM CUSTOMER;