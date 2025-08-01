create database Thunder
use Thunder
CREATE TABLE Student(
reg_no INT PRIMARY KEY,
name VARCHAR(20) NOT NULL,
department VARCHAR(40) NOT NULL,
year INT NOT NULL);
INSERT INTO Student(reg_no,name,department,year) VALUES (
066,'tamil','Computer Science',4),
(083,'harini','AI&DS',3),
(077,'sanjay','BBA',1);
SELECT * FROM Student;
UPDATE Student
SET name='Manju',
department='LLB',
year=3 WHERE reg_no =077;

INSERT INTO Student(reg_no,name,department,year)
VALUES (45,'Adhirai','BA',2);
SELECT * FROM Student;

ALTER TABLE Student
ADD phone_num VARCHAR(13);
UPDATE Student
SET phone_num = '7418134823' WHERE reg_no =066;
UPDATE Student
SET phone_num ='8903435169' WHERE reg_no =045;
UPDATE Student
SET phone_num ='9443124358' WHERE reg_no =77;
UPDATE Student
SET phone_num ='9585405628' where reg_no =83;

SELECT COUNT(*) AS tot_Student FROM Student;
SELECT MAX(year) AS max_yr FROM Student;
SELECT MIN(year) AS min_yr FROM Student;
SELECT AVG(year) AS av_yr FROM Student;
SELECT department,COUNT(*) As dept_count FROM Student GROUP BY department;

SELECT department,MAX(year) AS max_yr FROM Student
GROUP BY department;

SELECT * FROM Student
ORDER BY year ASC;

SELECT * FROM Student
ORDER BY name;

SELECT * FROM Student
ORDER BY department DESC;

SELECT UPPER(department) AS dep_upr FROM Student;
SELECT UPPER(name) AS name_up FROM Student;
SELECT LOWER(name) AS name_up FROM Student;
SELECT LEFT(name,2) AS srt FROM Student;
SELECT name,LENGTH(name) AS name_ln FROM Student;
SELECT CONCAT(name,' - ',department)AS combine 
FROM Student;

SELECT name,year,year+1 AS nx_yr FROM Student;
SELECT reg_no,MOD(reg_no,2) AS odr FROM Student;

ALTER TABLE Student
ADD Date_Detail DATE;

SELECT * FROM Student;

UPDATE Student SET Date_Detail='2021-08-21' WHERE reg_no=45;
UPDATE Student SET Date_Detail='2005-04-21' WHERE reg_no=77;
UPDATE Student SET Date_Detail='2005-08-21' WHERE reg_no=83;
UPDATE Student SET Date_Detail='2056-08-21' WHERE reg_no=66;

SELECT CURDATE();
SELECT CURTIME();

SELECT reg_no,name,YEAR(Date_Detail) AS yr FROM Student;