
-- Create the sales_data table
CREATE TABLE sales_data (
    OrderID INT,
    CustomerID TEXT,
    OrderDate DATE,
    Product TEXT,
    Category TEXT,
    Quantity INT,
    Price REAL,
    TotalAmount REAL
);

-- Insert sample data into sales_data
INSERT INTO sales_data (OrderID, CustomerID, OrderDate, Product, Category, Quantity, Price, TotalAmount) VALUES
(1, 'C001', '2024-06-01', 'Active classic boxers', 'Clothing', 2, 20.00, 40.00),
(2, 'C002', '2024-06-02', 'Alpine wind jkt', 'Outerwear', 1, 120.00, 120.00),
(3, 'C003', '2024-06-03', 'Active sport briefs', 'Clothing', 3, 15.00, 45.00),
(4, 'C001', '2024-06-04', 'Alpine guide pants', 'Outerwear', 1, 150.00, 150.00),
(5, 'C004', '2024-06-05', 'Active sport boxer briefs', 'Clothing', 2, 18.00, 36.00),
(6, 'C005', '2024-06-06', 'Alpine wind jkt', 'Outerwear', 1, 120.00, 120.00),
(7, 'C002', '2024-06-07', 'Active classic boxers', 'Clothing', 1, 20.00, 20.00);

-- 1. Basic SELECT with WHERE
SELECT * 
FROM sales_data 
WHERE Category = 'Clothing';

-- 2. GROUP BY with SUM
SELECT Category, SUM(TotalAmount) AS TotalRevenue
FROM sales_data
GROUP BY Category
ORDER BY TotalRevenue DESC;

-- 3. Average Revenue Per Customer
SELECT CustomerID, AVG(TotalAmount) AS AvgRevenue
FROM sales_data
GROUP BY CustomerID;

-- 4. Subquery: Customers who spent more than average
SELECT CustomerID, SUM(TotalAmount) AS TotalSpent
FROM sales_data
GROUP BY CustomerID
HAVING TotalSpent > (SELECT AVG(TotalAmount) FROM sales_data);

-- 5. Create a view
CREATE VIEW category_sales_summary AS
SELECT Category, COUNT(*) AS Orders, SUM(TotalAmount) AS Revenue
FROM sales_data
GROUP BY Category;
