

USE task3;
GO

CREATE TABLE Customers(
    customer_id INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE,
    phone_number BIGINT NOT NULL
);

CREATE TABLE Orders(
    order_id INT PRIMARY KEY,
    order_number INT NOT NULL UNIQUE,
    customer_id INT NOT NULL,
    order_date DATE NOT NULL,
    total_amount DECIMAL(10,2) NOT NULL,
    FOREIGN KEY(customer_id) REFERENCES Customers(customer_id)
);

CREATE TABLE Department(
    dep_id INT PRIMARY KEY,
    dep_name VARCHAR(255) UNIQUE NOT NULL
);


CREATE TABLE Employees(
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(255) NOT NULL,
    emp_email VARCHAR(255) UNIQUE,
    dep_id INT NOT NULL,
    salary DECIMAL(10,2),
    manager_id INT NULL,
    FOREIGN KEY(dep_id) REFERENCES Department(dep_id),
    FOREIGN KEY(manager_id) REFERENCES Employees(emp_id)
);

CREATE TABLE Products(
    product_id INT PRIMARY KEY,
    product_name VARCHAR(255) NOT NULL,
    price DECIMAL(10,2) NOT NULL
);


CREATE TABLE Order_Items(
    order_id INT NOT NULL,
    product_id INT NOT NULL,
    quantity INT NOT NULL,
    PRIMARY KEY(order_id, product_id),
    FOREIGN KEY(order_id) REFERENCES Orders(order_id) ON DELETE CASCADE,
    FOREIGN KEY(product_id) REFERENCES Products(product_id) ON DELETE CASCADE
);


CREATE TABLE Suppliers(
    supplier_id INT PRIMARY KEY,
    supplier_name VARCHAR(255) NOT NULL,
    contact_email VARCHAR(255),
    phone BIGINT,
    country VARCHAR(255)
);

ALTER TABLE Products
ADD supplier_id INT;

ALTER TABLE Products
ADD FOREIGN KEY (supplier_id) REFERENCES Suppliers(supplier_id);


INSERT INTO Customers VALUES
(1,'sahith','sahith@gmail.com',999999999),
(2,'sai','sai@gmail.com',999999998),
(3,'preetam','preetam@gmail.com',999999997),
(4,'rishi','rishi@gmail.com',999999996),
(5,'jaideep','jaideep@gmail.com',999999995),
(6,'sathwik','sathwik@gmail.com',999999994),
(7,'prudhvi','prudhvi@gmail.com',999999993),
(8,'amogh','amogh@gmail.com',999999992),
(9,'shankar','shankar@gmail.com',999999991);

select * from Customers

INSERT INTO Orders 
(order_id, order_number, customer_id, order_date, total_amount)
VALUES
(1,101,1,'2026-01-01',5000),
(2,102,2,'2026-01-02',6000),
(3,103,1,'2026-01-03',4500),
(4,104,1,'2026-01-04',3000),
(5,105,3,'2026-01-05',2500),
(6,106,1,'2026-01-06',7000),
(7,107,4,'2026-01-07',4000),
(8,108,5,'2026-01-08',3500),
(9,109,7,'2026-01-09',2000);



INSERT INTO Department VALUES
(1,'Human Resources'),
(2,'Finance'),
(3,'Engineering'),
(4,'Marketing'),
(5,'Sales');

SELECT * FROM Department;


INSERT INTO Employees VALUES
(101,'Arjun','arjun@company.com',3,75000,NULL),    
(102,'Kiran','kiran@company.com',3,56000,101),      
(103,'Meena','meena@company.com',2,69000,NULL),     
(104,'Ravi','ravi@company.com',2,52000,103),        
(105,'Suresh','suresh@company.com',4,61000,NULL),   
(106,'Pradeep','pradeep@company.com',4,45000,105),  
(107,'Ananya','ananya@company.com',1,58000,NULL),   
(108,'Disha','disha@company.com',1,43000,107),     
(109,'Tarun','tarun@company.com',5,67000,NULL),    
(110,'Jai','jai@company.com',5,42000,109);          


SELECT * FROM Employees;

INSERT INTO Suppliers VALUES
(1,'TechSource Ltd','support@techsource.com',9876543210,'India'),
(2,'Global Electronics','info@globalelec.com',9876501234,'USA'),
(3,'CompuWorld','sales@compuworld.com',9998887776,'India'),
(4,'TechGear International','service@techgear.com',9988776655,'Germany'),
(5,'Digital Hub','contact@digitalhub.com',9877001122,'Australia');




INSERT INTO Products VALUES
(1,'Laptop',65000,1),
(2,'Mouse',500,2),
(3,'Keyboard',800,3),
(4,'Monitor',7000,2),
(5,'Headphones',1200,4),
(6,'USB Cable',150,5),
(7,'Webcam',2500,3);


SELECT * FROM Products;

INSERT INTO Order_Items VALUES
(1,2,3),   
(1,3,1),   
(2,1,1),   
(3,4,2),   
(4,5,2),   
(5,3,1),   
(6,1,1),   
(7,2,1),   
(8,4,1),  
(9,7,1);   

select * from Customers
select * from Orders
SELECT * FROM Order_Items;
select * from Employees
select * from Department
select * from products
select * from Orders
SELECT * FROM Order_Items;
select * from Suppliers

CREATE TABLE students (
    student_id INT IDENTITY PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

CREATE TABLE courses (
    course_id INT IDENTITY PRIMARY KEY,
    course_name VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE student_courses (
    student_id INT,
    course_id INT,
    PRIMARY KEY (student_id, course_id),
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);


select * from students
select * from courses
select * from student_courses