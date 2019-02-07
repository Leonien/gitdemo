/* 
module_name, your_name, date

good practice is important.  
Script filess should structured, tidy and professional to aim usability
 
*/
 
 -- RunCommand EG @f:\databases\createtest.txt
 
 -- NOTE ORDER THE TABLES ARE CREATED, THE NOT NULLS AND DEFAULT VALUES

-- CREATE TABLE COMMANDS

CREATE TABLE students(
student_id      NUMBER(4),
national_ins	VARCHAR2(10),
student_fname   VARCHAR2(10),
student_lname   VARCHAR2(12),
street		VARCHAR2(10),
city		VARCHAR2(15),
country		VARCHAR2(15)DEFAULT 'ENGLAND',
tel_no         	VARCHAR2(15) NOT NULL,
gender       	VARCHAR2(1) ,
date_of_birth  	DATE);

CREATE TABLE books(
isbn     	NUMBER(2),
title  		VARCHAR2(15),
note		VARCHAR2(50),
Author          VARCHAR2(12),
Publisher       VARCHAR2(15),
date_published  DATE,
edition		NUMBER(2));

CREATE TABLE loans(
student_id      NUMBER(4),
isbn     	NUMBER(2),
loan_date	DATE);


	