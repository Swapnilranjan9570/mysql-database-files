USE bankdb;
CREATE TABLE IF NOT EXISTS customers (
    id INT PRIMARY KEY AUTO_INCREMENT,
    age INT,
    job VARCHAR(50),
    balance DECIMAL(10,2),
    education VARCHAR(30),
    loan VARCHAR(10),
    house VARCHAR(10)
);
iNSERT INTO customers (name, age, job, balance, education, loan, house) VALUES
('Rahul', 28, 'Engineer', 15000.50, 'Graduate', 'Yes', 'Owned'),
('Sneha', 32, 'Teacher', 12000.00, 'Postgraduate', 'No', 'Rented'),
('Amit', 45, 'Business', 50000.75, 'Graduate', 'Yes', 'Owned'),
('Pooja', 25, 'Designer', 8000.25, 'Diploma', 'No', 'Rented'),
('Vikas', 38, 'Manager', 30000.00, 'Graduate', 'Yes', 'Owned');

select sum(balance)as
total_balance
from customers;

select avg(balance)as
average_balance
from customers;

SELECT MIN(balance) AS minimum_balance FROM customers;
SELECT Max(balance) AS maximum_balance FROM customers;
SELECT * FROM customers WHERE loan = 'yes';
SELECT avg(balance) AS avg_balance FROM customers WHERE job = 'admin';
SELECT * 
FROM customers 
WHERE (job IS NULL OR job = 'jobless') 
AND age < 45;

SELECT *
FROM customers
WHERE (education = 'primary' OR job = 'jobless');

SELECT *
FROM customers
WHERE balance < 0

SELECT name, balance
FROM customers
WHERE (house = 'owned' OR house = 'rented');

USE bankdb;
DELIMITER &&
CREATE PROCEDURE SUDH()
BEGIN
SELECT * FROM customers;
END &&

CALL SUDH();

USE bankdb;

DELIMITER $$
CREATE PROCEDURE BAL_MAX()
BEGIN
    SELECT * 
    FROM customers 
    WHERE balance = (SELECT MAX(balance) FROM customers_details);
END $$

USE bankdb;

DROP PROCEDURE IF EXISTS BAL_MAX;

DELIMITER $$

USE bankdb;
DROP PROCEDURE IF EXISTS BAL_MAX;

DELIMITER $$

CREATE PROCEDURE BAL_MAX()
BEGIN
    SELECT *
    FROM customers
    WHERE balance = (SELECT MAX(balance) FROM customers);
END $$

DELIMITER ;
USE bankdb;
CALL BAL_MAX();
call sudh();


USE bankdb;

-- Delete the old procedure if it already exists
DROP PROCEDURE IF EXISTS sel_edu_job;

DELIMITER &&

-- Create the new procedure
CREATE PROCEDURE sel_edu_job()
BEGIN
    SELECT * 
    FROM customers 
    WHERE education = 'Diploma' 
      AND job = 'Designer';
END &&

DELIMITER ;

-- Call the procedure
CALL sel_edu_job();

USE bankdb;

DROP PROCEDURE IF EXISTS sel_edu_job1;

DELIMITER &&

CREATE PROCEDURE sel_edu_job1(IN v1 VARCHAR(50), IN v2 VARCHAR(50))
BEGIN
    SELECT * 
    FROM customers 
    WHERE education = v1 
      AND job = v2;
END &&

DELIMITER ;
CALL sel_edu_job1('Graduate', 'Manager');
USE bankdb;


CREATE VIEW customers_view AS
SELECT age, job, balance, education, loan, house
FROM customers;

SELECT * FROM customers_view;


