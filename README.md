
# Task 4: SQL for Data Analysis

## 📌 Objective
Use SQL queries to extract and analyze data from an eCommerce dataset. This includes writing SELECT statements, using GROUP BY, JOINs, subqueries, creating views, and applying aggregate functions.

## 🛠 Tools Used
- SQLite (You can also use MySQL or PostgreSQL)
- Simulated eCommerce dataset

## 📂 Dataset (Simulated)
We used a simulated table named `sales_data` with the following columns:
- `OrderID`: Unique order identifier
- `CustomerID`: ID of the customer
- `OrderDate`: Date of the order
- `Product`: Name of the product
- `Category`: Product category
- `Quantity`: Number of items ordered
- `Price`: Price per item
- `TotalAmount`: Total revenue from the item (Quantity × Price)

## 🧪 SQL Queries Performed
1. **Basic SELECT with WHERE** – Filter data for a specific category.
2. **GROUP BY with Aggregates** – Total revenue per category.
3. **Average Revenue per Customer** – Using `AVG()` and `GROUP BY`.
4. **Subquery** – Find customers whose total spending is above the average.
5. **View Creation** – Create a view for category-wise revenue summary.

## 📁 Files Included
- `task3_data_analysis.sql` – SQL script with table creation, sample data, and queries.
- `README.md` – This file, explaining the task.

## ✅ How to Use
1. Load `task3_data_analysis.sql` in your SQL environment.
2. Run the script to create the table, insert data, and execute queries.
3. View the output and capture screenshots for submission.
