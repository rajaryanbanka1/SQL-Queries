-- 41: Total revenue across all orders
SELECT SUM(amount) FROM orders;

-- 42: Revenue per customer
SELECT customer_id, SUM(amount) FROM orders GROUP BY customer_id;

-- 43: High value customers (HAVING filter after aggregation)
SELECT customer_id, SUM(amount) FROM orders GROUP BY customer_id HAVING SUM(amount)>10000;

-- 44: Customer distribution by city
SELECT city, COUNT(*) FROM customers GROUP BY city;

-- 45: Average price per category
SELECT category, AVG(price) FROM products GROUP BY category;

-- 46: Total quantity sold per product
SELECT product_id, SUM(quantity) FROM order_items GROUP BY product_id;

-- 47: Revenue per order (line item aggregation)
SELECT order_id, SUM(quantity*price) FROM order_items GROUP BY order_id;

-- 48: Payment method distribution
SELECT payment_method, COUNT(*) FROM payments GROUP BY payment_method;

-- 49: Payment status distribution
SELECT status, COUNT(*) FROM payments GROUP BY status;

-- 50: Transaction volume by type
SELECT txn_type, SUM(txn_amount) FROM transactions GROUP BY txn_type;

-- 51: Failed payments count using FILTER
SELECT COUNT(*) FILTER (WHERE status='Failed') FROM payments;

-- 52: Maximum order value
SELECT MAX(amount) FROM orders;

SELECT COUNT(*) FROM order_items;
