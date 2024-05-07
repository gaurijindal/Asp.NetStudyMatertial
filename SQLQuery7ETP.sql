CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    order_date DATE,
    status VARCHAR(50)
);

INSERT INTO orders (order_id, order_date, status) VALUES
(1, '2021-12-31', 'pending'),
(2, '2021-01-01', 'processing'),
(3, '2022-01-02', 'pending');

SELECT * FROM orders
GO
UPDATE orders
SET status = 'completed'
WHERE order_date < '2022-01-01';
