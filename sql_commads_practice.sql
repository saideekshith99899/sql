create database vnr_college;
USE vnr_college;

CREATE TABLE studentt(
rollno INT PRIMARY KEY,
name VARCHAR(20),
marks INT,
grade VARCHAR(1),
city VARCHAR(20)
);
INSERT INTO studentt
(rollno,name,marks,grade,city)
VALUES
(101,"anil",78,"C","pune"),
(102,"deekshith",98,"A","Mumbai"),
(103,"rohit",89,"B","Mumbai"),
(104,"nitin",78,"C","Hyderabad"),
(105,"shiva",99,"A","Delhi"),
(106,"bhanu",30,"D","Delhi"),
(107,"manoj",56,"C","Hyderabad");


SELECT * FROM studentt;

SELECT DISTINCT city FROM studentt;

SELECT grade,count(rollno)
FROM Studentt
GROUP BY grade
ORDER BY grade;

SELECT city, count(name)
FROM studentt
GROUP BY city
HAVING MAX(marks) > 90;


SELECT city
FROM studentt
WHERE grade = "A"
GROUP BY city
HAVING MAX(marks) > 90
ORDER BY city DESC;


SET SQL_SAFE_UPDATES = 0;
UPDATE studentt
SET grade ="O"
WHERE grade ="A";

SELECT * FROM studentt;

UPDATE studentt
SET marks = 100
WHERE rollno = 104;

UPDATE studentt
SET grade = "A"
WHERE marks BETWEEN 90 AND 100;



DELETE FROM studentt
WHERE marks < 40;


INSERT INTO studentt VALUES(106,"bhanu",30,"D","Delhi");

SELECT * FROM studentt;
