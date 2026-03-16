
-- Q1: Total Revenue
SELECT SUM(total_amount) AS total_revenue, COUNT(*) AS total_transactions, ROUND(AVG(total_amount), 2) AS avg_order_value
FROM sales;

-- Q2: Revenue by Product Category
SELECT product_category, SUM(total_amount) AS revenue, COUNT(*) AS transactions
FROM sales GROUP BY product_category ORDER BY revenue DESC;

-- Q3: Revenue by Gender
SELECT gender, SUM(total_amount) AS revenue, ROUND(AVG(total_amount), 2) AS avg_spend
FROM sales GROUP BY gender ORDER BY revenue DESC;

-- Q4: Revenue by Age Group
SELECT age_group, SUM(total_amount) AS revenue, COUNT(*) AS transactions
FROM sales GROUP BY age_group ORDER BY revenue DESC;

-- Q5: Top 5 Biggest Transactions
SELECT transaction_id, customer_id, product_category, quantity, total_amount
FROM sales ORDER BY total_amount DESC LIMIT 5;

-- Q6: Revenue by Month
SELECT month_name, month, SUM(total_amount) AS revenue
FROM sales GROUP BY month_name, month ORDER BY revenue DESC;
