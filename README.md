# Sales-Trend-Analysis-Task6.
 "SQL-based monthly sales trend analysis for internship Task-6"


## 📌 Objective
Analyze monthly revenue and order volume using SQL aggregation functions to understand sales performance trends.

## 🛠 Tools Used
- PostgreSQL (pgAdmin)

## 🗂 Dataset
**Table Name:** `online_sales`  
**Columns:**
- `order_date` (Date of the order)
- `amount` (Revenue from the order)
- `product_id` (Product identifier)

## 📊 Steps Performed
1. Extracted **Year** and **Month** from `order_date`.
2. Grouped data by year and month.
3. Calculated **Total Revenue** using `SUM(amount)`.
4. Calculated **Total Orders** using `COUNT(DISTINCT product_id)`.
5. Ordered results chronologically using `ORDER BY`.


## 📝 SQL Script
```sql
SELECT
    EXTRACT(YEAR FROM order_date) AS order_year,
    EXTRACT(MONTH FROM order_date) AS order_month,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT product_id) AS total_orders
FROM online_sales
GROUP BY order_year, order_month
ORDER BY order_year, order_month;
