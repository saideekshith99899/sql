CREATE TABLE students(
rollno INT PRIMARY KEY,
name VARCHAR(20),
marks INT NOT NULL,
grade VARCHAR(1),
city VARCHAR(20)
);

INSERT INTO students VALUES(101,'anil',78,'C','pune');
INSERT INTO students VALUES(102,'anile',87,'B','punes');
INSERT INTO students VALUES(103,'anils',98,'A','Hyd');
INSERT INTO students VALUES(104,'anilg',67,'D','ADILABD');
INSERT INTO students VALUES(105,'anilgh',58,'E','punerrr');
INSERT INTO students VALUES(106,'anilghj',48,'E','punedfdd');
INSERT INTO students VALUES(107,'anilrt',38,'F','punessss');


SELECT * FROM students;

SELECT AVG(marks) FROM students;
SELECT name,marks FROM students WHERE marks > (SELECT AVG(marks) FROM students) ;


SELECT name, rollno
FROM students
WHERE rollno IN  (SELECT rollno FROM students WHERE rollno % 2 = 0);
