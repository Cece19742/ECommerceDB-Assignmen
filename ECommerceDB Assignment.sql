CREATE DATABASE ECommerceDB;

USE  ECommerceDB;


CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(100) NOT NULL,
    Email VARCHAR(100),
    Phone VARCHAR(20),
    City VARCHAR(50)
);



CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100) NOT NULL,
    Category VARCHAR(50),
    Price DECIMAL(10,2),
    Stock INT
);


CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    FOREIGN KEY (CustomerID)
        REFERENCES Customers(CustomerID)
);


CREATE TABLE OrderDetails (
    OrderDetailID INT PRIMARY KEY,
    OrderID INT,
    ProductID INT,
    Quantity INT,
    FOREIGN KEY (OrderID)
        REFERENCES Orders(OrderID),
    FOREIGN KEY (ProductID)
        REFERENCES Products(ProductID)
);



INSERT INTO Customers VALUES
(1,'John Doe','johnkollie674@gmail.com','0794418778','Kigali'),
(2,'Alice Smith','alice@gmail.com','0770912025','Musanze'),
(3,'David Brown','david@gmail.com','0794090775','Huye'),
(4,'Sarah Wilson','sarah@gmail.com','0770731544','Rubavu'),
(5,'Peter Johnson','peter@gmail.com','0775595542','Liberia');


INSERT INTO Products VALUES
(101,'Laptop','Electronics',900.00,15),
(102,'Phone','Electronics',650.00,20),
(103,'Headphones','Accessories',80.00,40),
(104,'Keyboard','Accessories',60.00,35),
(105,'Mouse','Accessories',45.00,50),
(106,'Printer','Electronics',250.00,10);


INSERT INTO Orders VALUES
(1001,1,'2026-06-01'),
(1002,2,'2026-06-02'),
(1003,3,'2026-06-03'),
(1004,1,'2026-06-05'),
(1005,5,'2026-06-08');



INSERT INTO OrderDetails VALUES
(1,1001,101,1),
(2,1001,103,2),
(3,1002,102,1),
(4,1003,104,3),
(5,1004,105,2),
(6,1005,106,1),
(7,1005,103,1);



SELECT * FROM Customers;

SELECT * FROM Products;

SELECT * FROM Orders;

SELECT * FROM OrderDetails;