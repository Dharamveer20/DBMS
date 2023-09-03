CREATE DATABASE temp1;
CREATE DATABASE IF NOT EXISTS college;
USE college;

CREATE TABLE student1(
	rollno INT PRIMARY KEY,
    name VARCHAR(50)
);
INSERT INTO student1 VALUE (1, "Basanti");
INSERT INTO student1 VALUE (2, "Suwarna");
SELECT * FROM student1;

SEKECT