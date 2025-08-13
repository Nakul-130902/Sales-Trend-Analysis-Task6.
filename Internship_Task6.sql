CREATE TABLE online_sales (
    order_id SERIAL PRIMARY KEY,
    order_date DATE,
    amount NUMERIC(10,2),
    product_id INT
);


INSERT INTO online_sales (order_date, amount, product_id) VALUES
('2024-01-05', 1200.50, 101),
('2024-01-15', 800.00, 102),
('2024-01-25', 1500.75, 103),
('2024-02-03', 950.00, 101),
('2024-02-10', 1120.25, 104),
('2024-02-22', 675.50, 105),
('2024-03-01', 1300.00, 106),
('2024-03-18', 750.00, 101),
('2024-03-28', 980.25, 107),
('2024-04-07', 1450.00, 108),
('2024-04-15', 1620.75, 109),
('2024-04-27', 890.00, 102),
('2024-05-03', 1100.50, 110),
('2024-05-14', 950.25, 111),
('2024-05-25', 1025.00, 103),
('2024-06-02', 1350.00, 112),
('2024-06-19', 1475.50, 101),
('2024-06-28', 900.00, 113),
('2024-07-06', 1700.00, 114),
('2024-07-15', 1550.25, 115);


Select * from online_Sales;

SELECT
    EXTRACT(YEAR FROM order_date) AS order_year,
    EXTRACT(MONTH FROM order_date) AS order_month,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT product_id) AS total_orders
FROM online_sales
GROUP BY order_year, order_month
ORDER BY order_year, order_month;




