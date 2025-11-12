-- Top categories by profit
SELECT category, SUM(sales) AS total_sales, SUM(profit) AS total_profit
FROM orders
GROUP BY category
ORDER BY total_profit DESC
LIMIT 10;

-- Sales by region and year
SELECT region, order_year, SUM(sales) AS sales
FROM orders
GROUP BY region, order_year
ORDER BY region, order_year;

-- Top 10 customers by sales
SELECT customer_name, SUM(sales) AS total_sales
FROM orders
GROUP BY customer_name
ORDER BY total_sales DESC
LIMIT 10;