
CREATE DATABASE Grocery;

USE Grocery;

CREATE TABLE Product (
    PRO_ID INT PRIMARY KEY,
    Product NVARCHAR(100),
    Name NVARCHAR(100),
    Info NVARCHAR(MAX)
);

INSERT INTO Product (PRO_ID, Product, Name, Info)
VALUES 
    (101, 'Apple', 'Fruit', 'Fresh and juicy apples'),
    (102, 'Banana', 'Fruit', 'Yellow bananas'),
    (103, 'Milk', 'Dairy', 'Cow milk'),
    (104, 'Bread', 'Bakery', 'Whole wheat bread');

SELECT * FROM Product;

CREATE TABLE Customer (
    CUST_ID INT,
    CUST_NAME NVARCHAR(100),
    CUST_PH NVARCHAR(20),
    CUST_HIST NVARCHAR(MAX)
);

INSERT INTO Customer (CUST_ID, CUST_NAME, CUST_PH, CUST_HIST)
VALUES 
    (102, 'John Doe', '123-456-7890', 'Regular customer'),
    (103, 'Jane Smith', '987-654-3210', 'New customer');

SELECT * FROM Customer;

CREATE TABLE Orders (
    ORDER_ID INT PRIMARY KEY,
    ORDER_NAME NVARCHAR(100),
    BUYING_HIST NVARCHAR(MAX),
    QTY INT,
    PRO_ID INT,
    FOREIGN KEY (PRO_ID) REFERENCES Product(PRO_ID)
);

INSERT INTO Orders (ORDER_ID, ORDER_NAME, BUYING_HIST, QTY, PRO_ID)
VALUES 
    (301, 'Order 1', 'Bought apples', 5, 101),
    (302, 'Order 2', 'Bought bananas', 3, 102),
    (303, 'Order 3', 'Bought milk', 2, 103);

SELECT * FROM Orders;

CREATE TABLE Return_Item (
    RETURN_ID INT PRIMARY KEY,
    RETURN_DATE DATETIME,
    CONDITION NVARCHAR(100)
);

INSERT INTO Return_Item (RETURN_ID, RETURN_DATE, CONDITION)
VALUES 
    (401, '2022-01-15', 'Damaged'),
    (402, '2022-02-20', 'Not as described');

SELECT * FROM Return_Item;

DROP TABLE Customer;

ALTER TABLE Return_Item DROP COLUMN CONDITION;

DELETE FROM Orders WHERE ORDER_ID = 302;

DELETE FROM Orders WHERE PRO_ID = 101;
