CREATE TABLE store (
    ID INT PRIMARY KEY,
    name VARCHAR(100),
    location VARCHAR(100),
    manager VARCHAR(100)
);

INSERT INTO store (ID, name, location, manager)
VALUES
    (1, 'Store1', 'North India', 'Manager1'),
    (2, 'Store2', 'East India', 'Manager2'),
    (3, 'Store3', 'South India', 'Manager3');

CREATE TABLE sale (
    sale_id INT PRIMARY KEY,
    store_id INT,
    sale_date DATE,
    amnt DECIMAL(10, 2),
    FOREIGN KEY (store_id) REFERENCES store(ID)
);

INSERT INTO sale (sale_id, store_id, sale_date, amnt)
VALUES
    (1, 1, '2022-01-01', 1000.00),
    (2, 1, '2022-02-01', 2000.00),
    (3, 2, '2022-01-15', 1500.00),
    (4, 2, '2022-02-20', 2500.00),
    (5, 3, '2022-03-05', 3000.00);

SELECT * FROM store;
SELECT * FROM sale;

SELECT SUM(s.amnt) AS TotalSalesAmount
FROM sale s
JOIN store st ON s.store_id = st.ID
WHERE st.location = 'North India' AND YEAR(s.sale_date) = 2022;

SELECT MAX(s.amnt) AS HighestSaleAmount
FROM sale s
JOIN store st ON s.store_id = st.ID
WHERE st.location IN ('North India', 'East India');

SELECT SUM(s.amnt) AS TotalSalesAmount
FROM sale s
INNER JOIN store st ON s.store_id = st.ID
WHERE st.location = 'North India'
AND YEAR(s.sale_date) = 2022;

