create database Employee
use Employee
CREATE TABLE Emp
(Emp_id INT PRIMARY KEY,
name VARCHAR(20) NOT NULL,
department VARCHAR(40) NOT NULL,
Experience INT NOT NULL);
INSERT INTO EMP(Emp_id,name,department,Experience) VALUES (
066,'tamil','sales',4),
(077,'harini','developer',3),
(080,'Nidhi','Manager',5);
SELECT * FROM Emp
UPDATE Emp
SET Name='Subhi',
department='Tester',
Experience=3 WHERE Emp_id=066;

ALTER TABLE Emp
ADD Salary VARCHAR(13);
UPDATE Emp
SET Salary = '60000' WHERE Emp_id=66;
UPDATE Emp
SET Salary = '70000' WHERE Emp_id=80;
UPDATE Emp
SET Salary = '65000' WHERE Emp_id=77;

INSERT INTO EMP(Emp_id,name,department,Experience,Salary)
VALUES (45,'Adhirai','Marketing','4',65000);
SELECT * FROM Emp;