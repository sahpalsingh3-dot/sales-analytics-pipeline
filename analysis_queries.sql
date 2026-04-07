SELECT ROUND(SUM(sales), 2) AS total_revenue
FROM order_items;

SELECT COUNT(*) AS total_orders
FROM orders;

SELECT ROUND(SUM(oi.sales) * 1.0 / COUNT(DISTINCT o.order_id), 2) AS avg_order_value
FROM orders o
JOIN order_items oi
ON o.order_id = oi.order_id;

SELECT 
    c.region,
    ROUND(SUM(oi.sales), 2) AS revenue
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_items oi ON o.order_id = oi.order_id
GROUP BY c.region
ORDER BY revenue DESC;

SELECT 
    p.category,
    ROUND(SUM(oi.sales), 2) AS revenue
FROM products p
JOIN order_items oi ON p.product_id = oi.product_id
GROUP BY p.category
ORDER BY revenue DESC;

SELECT 
    c.customer_name,
    ROUND(SUM(oi.sales), 2) AS revenue
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_items oi ON o.order_id = oi.order_id
GROUP BY c.customer_name
ORDER BY revenue DESC;

SELECT 
    strftime('%Y-%m', o.order_date) AS order_month,
    ROUND(SUM(oi.sales), 2) AS monthly_revenue
FROM orders o
JOIN order_items oi ON o.order_id = oi.order_id
GROUP BY strftime('%Y-%m', o.order_date)
ORDER BY order_month;

SELECT
    o.order_id,
    o.order_date,
    c.customer_id,
    c.customer_name,
    c.region,
    c.segment,
    p.product_id,
    p.product_name,
    p.category,
    oi.quantity,
    oi.sales
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
JOIN order_items oi ON o.order_id = oi.order_id
JOIN products p ON oi.product_id = p.product_id
ORDER BY o.order_date, o.order_id;
SELECT COUNT(*) FROM order_items;