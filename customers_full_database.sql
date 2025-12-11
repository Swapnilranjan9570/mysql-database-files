
CREATE DATABASE bankdb;

Use the database
USE bankdb;

CREATE TABLE customers (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50),
    age INT,
    job VARCHAR(50),
    balance DECIMAL(10,2),
    education VARCHAR(30),
    loan VARCHAR(10),
    house VARCHAR(10)
);


 select * from customers
INSERT INTO customers (name, age, job, balance, education, loan, house) VALUES
('Ravi', 32, 'admin', 25000, 'graduate', 'yes', 'yes'),
('Sita', 28, NULL, 5000, 'primary', 'no', 'no'),
('Aman', 45, 'teacher', -2000, 'secondary', 'yes', 'yes'),
('Rohit', 22, NULL, 1000, 'primary', 'no', 'no'),
('Neha', 31, 'admin', 35000, 'graduate', 'no', 'yes'),
('Pooja', 40, 'engineer', 80000, 'postgraduate', 'yes', 'yes'),
('Karan', 55, 'doctor', 120000, 'postgraduate', 'no', 'yes'),
('Mohan', 29, NULL, -500, 'primary', 'no', NULL),
('Anita', 38, 'admin', 70000, 'graduate', 'yes', 'no'),
('Sonu', 42, 'jobless', 0, 'primary', 'no', 'no'),
('Raju', 34, 'farmer', 9000, 'secondary', 'no', 'yes'),
('Komal', 26, 'nurse', 16000, 'graduate', 'yes', 'no'),
('Deepak', 48, 'police', 45000, 'graduate', 'yes', 'yes'),
('Lata', 37, NULL, 2500, 'primary', 'no', 'no'),
('Vijay', 50, 'driver', -1200, 'secondary', 'no', 'no'),
('Chintu', 19, NULL, 300, 'primary', 'no', NULL),
('Meera', 33, 'banker', 60000, 'graduate', 'yes', 'yes'),
('Harsh', 24, 'salesman', 8000, 'secondary', 'no', 'no'),
('Nisha', 30, 'admin', 40000, 'graduate', 'yes', 'yes'),
('Kabir', 46, 'teacher', 15000, 'postgraduate', 'no', 'no'),
('Gopal', 52, 'shopkeeper', 23000, 'secondary', 'no', 'yes'),
('Zoya', 27, NULL, -300, 'primary', 'no', 'no'),
('Iqbal', 41, 'engineer', 78000, 'postgraduate', 'yes', 'yes'),
('Tina', 23, 'student', 2000, 'secondary', 'no', 'no'),
('Varun', 36, 'chef', 18500, 'graduate', 'no', 'yes'),
('Preeti', 39, 'admin', 29000, 'graduate', 'yes', 'yes'),
('Shyam', 60, 'retired', 5000, 'primary', 'no', 'yes'),
('Arjun', 21, 'student', -700, 'secondary', 'no', 'no'),
('Gayatri', 44, 'nurse', 32000, 'graduate', 'yes', 'yes'),
('Ramesh', 53, NULL, 400, 'primary', 'no', 'no');
select * from customers
