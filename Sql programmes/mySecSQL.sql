CREATE DATABASE IF NOT EXISTS  company;
USE company;
CREATE TABLE employee(
	id INT PRIMARY KEY,
    name VARCHAR(50),
    salary FLOAT
);
INSERT INTO employee 
(id,name,salary)
VALUES
(1, "Rabi", 98932),
(2,"Khachra", 78929),
(3,"lattu-kumar", 89782);

SELECT * FROM employee;

CREATE TABLE temp1(
	roll INT,
    name VARCHAR(50),
    class VARCHAR(12),
    PRIMARY KEY(roll,name)
);
CREATE TABLE temp2(
	id INT,
    salary INT DEFAULT 25000
);
INSERT INTO temp2 VALUES (1, 4356);
INSERT INTO temp2 (id) VALUES (2);
SELECT * FROM temp2;

CREATE TABLE temp3(
	age INT,
    branch VARCHAR(10),
    CONSTRAINT CHECK (age >= 18 AND branch = "INFT")
);
CREATE TABLE IF NOT EXISTS temp(
	cust_id int,
    FOREIGN KEY(cust_id) REFERENCES Customer(id)
);

SELECT DISTINCT col1 FROM employee; 


