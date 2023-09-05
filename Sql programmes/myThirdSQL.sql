CREATE DATABASE IF NOT EXISTS college1;
USE college1;
CREATE TABLE student(
	roll_no INT PRIMARY KEY,
    name VARCHAR(20),
    marks INT,
    city VARCHAR(20),
);
INSERT INTO student(roll_no, name, marks, city)
VALUES 
(1, "Basundi", 56, "Ranchi"),
(2, "Bimla", 78, "Imphal"),
(3, "Bikas", 99, "Ranchi");
SELECT * FROM student WHERE city = "Ranchi"; 
SELECT * FROM student WHERE marks > 70 AND city != "Imphal";
SELECT * FROM student WHERE city NOT IN ("Mumbai", "Delhi");
SELECT * FROM student WHERE marks > 50 LIMIT 2;

SELECT * FROM student ORDER BY marks DESC LIMIT 3;
SELECT * FROM student ORDER BY name ASC;
SELECT MAX(marks) FROM tb_name;

INSERT INTO student(roll_no, name, marks, city)
VALUES 
(4, "Birjesh", 62, "Ranchi"),
(5, "Bablu", 83, "Imphal");
SELECT * FROM student;
SELECT city FROM student GROUP BY city;
SELECT city,name,COUNT(roll_no) FROM student GROUP BY city,name;
SELECT city, avg(marks) FROM student GROUP BY city;
SELECT city, AVG(marks) FROM student GROUP BY city ORDER BY AVG(marks) ASC;
SELECT city,count(roll_no)FROM student GROUP BY city HAVING max( marks) > 90;

SET SQL_SAFE_UPDATES = 0;

 -- Inside the table
-- FOREIGN KEY(col_name) REFERENCES tb_name(colName) 
-- ON DELETE CASCADE
-- ON UPDATE CASCADE

CREATE TABLE dept(
	id INT PRIMARY KEY,
    name VARCHAR(20)
);
INSERT INTO dept VALUES (1, "English"),(2, "Maths");
 
 CREATE TABLE teacher(
	id INT PRIMARY KEY,
	name VARCHAR(50),
	dept_id INT,
	FOREIGN KEY(dept_id) REFERENCES dept(id)
	ON DELETE CASCADE
	ON UPDATE CASCADE
);
INSERT INTO teacher VALUES (105, "Parag", 2),(106, "Abhi", 1);
 
 SELECT * FROM dept 
 INNER JOIN teacher
 ON dept.id = teacher.dept_id;

SELECT * FROM student
LEFT JOIN course
ON student.id = course.id
UNION 
SELECT * FROM student
RIGHT JOIN course
ON student.id = course.id;

SELECT * FROM dept as t1
INNER JOIN teacher as t2
ON t1.id = t2.dept_id;
