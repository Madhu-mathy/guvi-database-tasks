-- creating database
CREATE DATABASE CompanyDetails;

-- using database
USE CompanyDetails;

-- creating table
CREATE TABLE Empl(
empno int, ename varchar(30), job varchar(20),  mgr int, hiredate date, sal double(10,2), comm double(10,2), deptno int
);

-- adding data into the table
INSERT INTO Empl VALUES
(8369,'SMITH','CLERK',8902,'1990-12-18', 800.00, NULL, 20),
(8499,'ANYA','SALESMAN',8698,'1991-02-20', 1600.00, 300.00, 30),  
(8521,'SETH','SALESMAN',8698,'1991-02-22', 1250.00, 500.00, 30), 
(8566,'MAHADEVAN','MANAGER',8839,'1991-04-02', 2985.00, NULL, 20),
(8654,'MOMIN','SALESMAN',8698,'1991-09-28', 1250.00, 1400.00, 30),
(8698,'BINA','MANAGER',8839,'1991-05-01', 2850.00, NULL, 30),   
(8882,'SHIVANSH','MANAGER',8839,'1991-06-09', 2450.00, NULL, 10), 
(8888,'SCOTT','ANALYST',8566,'1992-12-09', 3000.00, NULL, 20), 
(8839,'AMIR','PRESIDENT',NULL,'1991-11-18', 5000.00, NULL, 10), 
(8844,'KULDEEP','SALESMAN',8698,'1991-09-08', 1500.00, 0.00, 30);

-- display name and salary of employess, whose salary is greater than or equal to 2200
Select ename , sal from Empl
WHERE sal>=2200;

-- employees who dont get commision
Select * from Empl
WHERE comm IS NULL OR comm=0.00;

-- employe name and salary whose salary is not in range 2500 to 4000
SELECT ename, sal from Empl
WHERE sal NOT BETWEEN 2500 AND 4000;

-- emloyee who doesn't have a manager
SELECT ename, job, sal from Empl
WHERE mgr IS NULL;

-- employee name which has a as third letter
Select ename from empl 
WHERE ename LIKE '__A%' ;

-- employee name which as T as name letter
SELECT ename from Empl
WHERE ename LIKE '%T';



