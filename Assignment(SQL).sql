CREATE DATABASE StudentManagementSystem;
USE StudentManagementSystem;
CREATE TABLE STUDENT(SID INT PRIMARY KEY,
Firstname varchar(25),
lastname varchar(25),
DATE_OF_BIRTH DATE,
GENDER VARCHAR(10),
EMAIL VARCHAR(50) UNIQUE,
PHONE_NO VARCHAR(50));

DROP TABLE STUDENT;

insert into STUDENT values
(12,"ADITYA","KUMAR","2003-07-19","MALE",'ADITYA.KR@GMAIL.COM',7065986613),
(13,"AJAY","KUMAR","2003-08-11","MALE",'AJAY.KR@GMAIL.COM',7065986113),
(14,"DIVYANSHU","KHATWAL","2003-03-17","MALE",'DIVKN@GMAIL.COM',7065986613),
(15,"ANUJ","KASHYAP","2004-08-16","MALE",'ANUJKH@GMAIL.COM',7065986613),
(16,"SEEMA","PRAJAPATI","2003-07-19","MALE",'SEEMAP@GMAIL.COM',7065986613);
insert into student values(	17,"james","smith","2002-08-20","MALE","jamessmith@gmail.com",9898989898);

SELECT * FROM STUDENT;


CREATE TABLE Course (
    CourseID INT PRIMARY KEY,        
    CourseTitle VARCHAR(255),        
    Credits INT                    
);

INSERT INTO Course (CourseID, CourseTitle, Credits)
VALUES
    (1, 'Introduction to Programming', 3),
    (2, 'Data Structures and Algorithms', 4),
    (3, 'Database Management Systems', 3),
    (4, 'Web Development', 3),
    (5, 'Machine Learning', 4);
    
SELECT * FROM COURSE;



CREATE TABLE Instructor (
    InstructorID INT PRIMARY KEY,      
    FirstName VARCHAR(100),             
    LastName VARCHAR(100),              
    Email VARCHAR(255) UNIQUE           
);

INSERT INTO Instructor (InstructorID, FirstName, LastName, Email)
VALUES
    (1, 'John', 'Doe', 'john.doe@example.com'),
    (2, 'Jane', 'Smith', 'jane.smith@example.com'),
    (3, 'Robert', 'Johnson', 'robert.johnson@example.com'),
    (4, 'Emily', 'Davis', 'emily.davis@example.com'),
    (5, 'Michael', 'Wilson', 'michael.wilson@example.com');
    
SELECT * FROM INSTRUCTOR;   

CREATE TABLE Enrollment (
    EnrollmentID INT PRIMARY KEY,         
    EnrollmentDate DATE,                  
    StudentID INT,                        
    CourseID INT,                       
    InstructorID INT                  
); 

INSERT INTO Enrollment (EnrollmentID, EnrollmentDate, StudentID, CourseID, InstructorID)
VALUES
    (1, '2024-01-15', 101, 1, 1),  
    (2, '2024-01-16', 102, 2, 2),  
    (3, '2024-01-17', 103, 3, 3),  
    (4, '2024-01-18', 104, 4, 4),  
    (5, '2024-01-19', 105, 5, 5);  
    
SELECT * FROM ENROLLMENT;

CREATE TABLE Score (
    ScoreID INT PRIMARY KEY,           
    CourseID INT,                       
    StudentID INT,                     
    DateOfExam DATE,                    
    CreditObtained INT               
);


INSERT INTO Score (ScoreID, CourseID, StudentID, DateOfExam, CreditObtained)
VALUES
    (1, 1, 101, '2024-05-15', 3),   
    (2, 2, 102, '2024-05-16', 4),   
    (3, 3, 103, '2024-05-17', 3),   
    (4, 4, 104, '2024-05-18', 3),   
    (5, 5, 105, '2024-05-19', 4);   
    
SELECT * FROM SCORE;

CREATE TABLE FEEDBACK(FEEDBACK_ID INT PRIMARY KEY,STUDENTID INT ,Dateoffeedback DATE,instructor varchar(50),feedback varchar(255));

insert into feedback
values
     (1,1,'2024-3-19',"Jane Smith","EXCELLENT TEACHER"),
	(2,2,'2024-3-20',"JOHN DOE","GOOD TEACHER"),
	(3,3,'2024-3-19',"EMILY DAVIS","STRICT TEACHER");
    
SELECT * FROM FEEDBACK;

/*Use the Database and table from Day 1 lab. Insert 5 records in each table
and retrieve data from all tables and display.
Task 1: Update the Student table with the following information:
Change the email to 'jane_Smith@example.com'
Where FirstName is 'Jane' and LastName is 'Smith';
Update the Instructor with the following information:
Change the email to 'rogerwhite@example.com'
Where FirstName of the instructor is 'Roger' and LastName is 'White';*/


UPDATE STUDENT 
SET EMAIL='Adityakr@gmail.com' 
WHERE firstname = "ADITYA" AND lastname ="KUMAR";

select * from student;

UPDATE INSTRUCTOR 
SET EMAIL= 'Robertwilson@example.com'
where firstname="ROBERT" AND lastname="johnson";

select*from instructor;

/*Delete record from the Student table on following condition:
Delete student/students records from the Student table where last name is Smith.
List the student whose first name starts with J.*/

DELETE FROM STUDENT 
WHERE LASTNAME="SMITH";

SELECT * FROM STUDENT WHERE FIRSTNAME LIKE "J%";

/*Consider a simple database with one tables: Employee
Employee Table:
● Columns: emp_id (Primary Key), first_name, last_name, age, email

Task 1: Insert Data
Write an SQL INSERT statement to insert data into the Employee table.
Task 2: Retrieving Data
Write an SQL SELECT statement to retrieve the first_name and last_name of all
employees from the Employee table.
Task 3: Filtering Data
Write an SQL SELECT statement to retrieve the first_name, last_name, and age of
employees who are older than 30 years.
Task 4: Updating Data
Write an SQL UPDATE statement to increase the age of employees by 1 year for all
employees older than 25.
Using ChatGPT generates SQL queries to update the Employee salary.
Scenario:
*/

CREATE DATABASE EMPLOYEE;
USE EMPLOYEE;

CREATE TABLE EMPLOYEE_TABLE(emp_id INT PRIMARY KEY,FIRST_NAME VARCHAR(30),LAST_NAME VARCHAR(30),AGE INT,EMAIL VARCHAR(50));

INSERT INTO EMPLOYEE_TABLE (emp_id, first_name, last_name, age, email,SALARY,DEPARTMENT)
VALUES (1, 'John', 'Doe', 30, 'john.doe@example.com',60000.00,"IT"),
 (2, 'Jane', 'Smith', 25, 'jane.smith@example.com',50000.00,"HR"),
  (3, 'Emily', 'Johnson', 35, 'emily.johnson@example.com',70000,"IT"),
  (4, 'Michael', 'Brown', 40, 'michael.brown@example.com',20000,"TS");
  
SELECT FIRST_NAME,LAST_NAME FROM EMPLOYEE_TABLE;

SELECT FIRST_NAME,LAST_NAME,AGE FROM EMPLOYEE_TABLE WHERE AGE>30;

UPDATE EMPLOYEE_TABLE 
SET AGE=AGE+1
WHERE AGE>25;

SELECT * FROM EMPLOYEE_TABLE;

/*Consider a simple database with one tables: BankAccount
BankAccount Table:
● Columns: account_id (Primary Key), account_holder_name,
account_balance
Task 1: Insert Data
Write an SQL INSERT statement to insert data into the BankAccount table.
Task 2: Retrieving Data
Write an SQL SELECT statement to retrieve the account_holder_name and
account_balance of all account holders from the BankAccount table.
Task 3: Filtering Data
Write an SQL SELECT statement to retrieve the account_holder_name and
account_balance where the account_balance is more than 30,000.
Task 4: Updating Data
Write an SQL UPDATE statement to change the account_balance of the a
account_balance of the account
holder whose ID is 101.*/

CREATE DATABASE BANK;
USE BANK;

CREATE TABLE BANK_DETAILS(ACC_ID INT PRIMARY KEY,ACCHOLDER_NAME VARCHAR(50),ACCOUNT_BALANCE DECIMAL(15,2));

INSERT INTO BANK_DETAILS VALUES(101, 'John Doe', 5000.00),
  (102, 'Jane Smith', 3000.00),
  (103, 'Alice Johnson', 7000.50),
  (104, 'Bob Brown', 1200.00);
  
  DROP TABLE BANK_DETAILS;
 
SELECT*FROM BANK_DETAILS;

SELECT ACCHOLDER_NAME,ACCOUNT_BALANCE FROM BANK_DETAILS WHERE ACCOUNT_BALANCE>3000;

UPDATE BANK_DETAILS
SET ACCOUNT_BALANCE = 3900
WHERE ACC_ID = 101;

/*Lab 1-
Database Schema:
Use the same database scheme created in Previous Lab.
Task: Let's consider a scenario where you want to retrieve information about students
from a database table named student and display the results in ascending order based
on their last names.*/

USE StudentManagementSystem;
SELECT * FROM STUDENT ORDER BY LASTNAME;

/*Lab 2-
Database Schema:
Use the same database scheme created in Previous Lab.
Task: Let's consider a scenario where you want to count the number of students based
on their gender from a database table named Student.
Hint: use GroupBy clause and Count() function*/

SELECT GENDER, COUNT(*) AS Number_student FROM STUDENT GROUP BY GENDER;

/*Database Schema
Already we have created an Employee table in day 2 lab,let’s utilize this.
Task: Add two more columns in the Employee table named Salary and department and
add data into it. Now Imagine you work for a company with various departments, and
there is a need to analyze employee salaries within the IT department.Write a query to
retrieve all employees from the "employee" table who have a salary greater than 50000
and are in the 'IT' department*/
USE EMPLOYEE;
ALTER TABLE EMPLOYEE_TABLE
ADD COLUMN Salary DECIMAL(10, 2),    
ADD COLUMN Department VARCHAR(100); 

SELECT * FROM EMPLOYEE_TABLE;

SELECT * FROM EMPLOYEE_TABLE 
WHERE SALARY>50000.00 AND DEPARTMENT="IT";

/*Task: Imagine you are an HR analyst responsible for conducting a comprehensive
analysis of average salaries across different departments within a company. The goal is
to understand and compare the average salaries of employees in various
departments.Write a query to Calculate the average salary of employee in each
department from the "employee" table.*/

SELECT DEPARTMENT ,AVG(SALARY) AS Average_salary
FROM EMPLOYEE_TABLE
GROUP BY DEPARTMENT;


/*Scenario 1: Determine the average age of employees in each department from the
"employees" table.
We have an "Employee" table with the following columns: employee_id,
employee_name, department, and salary and you want to find the average salary for
each department. Generate the chatGPT prompt for the above scenario*/

SELECT DEPARTMENT ,AVG(AGE) AS AVG_AGE
FROM EMPLOYEE_TABLE
GROUP BY DEPARTMENT;

SELECT DEPARTMENT ,AVG(SALARY) AS Average_salary
FROM EMPLOYEE_TABLE
GROUP BY DEPARTMENT;

/*Assignment 1:
Task1: Assume you are managing a database of student records, and you need to
retrieve information about students born after November 16, 2003. What will be the sql query
for this?
Task2: Assume you have a database containing a "Student" table with information
about students, including their first names. You want to retrieve records of students
whose first names start with either 'A' or 'J'. To achieve this,what will be your sql query?
Task 3 .Let's consider a scenario where you have a database with a "Student" table that
contains information about students, including their first names and email addresses.
You want to retrieve records of students whose first name is not 'Alice' and whose email
addresses contain the domain '@example.com'. To achieve this, what will be your sql
query?*/

USE studentmanagementsystem;

SELECT * FROM STUDENT 
WHERE DATE_OF_BIRTH > "2003-11-16";

SELECT *
FROM Student
WHERE firstname LIKE 'A%' OR firstname LIKE 'J%';

SELECT *
FROM Student
WHERE firstname != 'Alice' AND email LIKE '%@example.com';

/*Task1: Create a table Person with PersonID int, FirstName varchar(255),
LastName varchar(255) and age (int).
Make PersonID PRIMARY KEY.
Task 2: Insert data to Person table*/

CREATE DATABASE PERSON;
USE PERSON;

CREATE TABLE PERSON_TABLE(person_id int primary key,Firstname varchar(255),lastname varchar(255),age int);
insert into person_table values(1, 'John', 'Doe', 30),
(2, 'Jane', 'Smith', 25),
(3, 'Michael', 'Johnson', 35);










