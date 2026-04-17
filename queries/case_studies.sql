-- 111: Customer lifetime value
SELECT customer_id, SUM(amount) FROM orders GROUP BY customer_id;

-- 112: 30-day retention proxy
SELECT COUNT(DISTINCT customer_id) FROM orders WHERE order_date >= CURRENT_DATE - INTERVAL '30 days';

-- 113: Repeat customers
SELECT customer_id FROM orders GROUP BY customer_id HAVING COUNT(*)>1;

-- 114: Top customers by revenue
SELECT customer_id, SUM(amount) revenue FROM orders GROUP BY customer_id ORDER BY revenue DESC LIMIT 5;

-- 115: Funnel conversion (orders → completed payments)
SELECT COUNT(DISTINCT o.order_id), COUNT(DISTINCT p.order_id) FROM orders o LEFT JOIN payments p ON o.order_id=p.order_id AND p.status='Completed';

-- 116: Payment failure rate
SELECT COUNT(*) FILTER(WHERE status='Failed')*100.0/COUNT(*) FROM payments;

-- 117: Product revenue
SELECT p.product_name, SUM(oi.quantity*oi.price) FROM order_items oi JOIN products p ON oi.product_id=p.product_id GROUP BY p.product_name;

-- 118: Category revenue
SELECT p.category, SUM(oi.quantity*oi.price) FROM order_items oi JOIN products p ON oi.product_id=p.product_id GROUP BY p.category;

-- 119: Cross-sell pairs
SELECT a.product_id, b.product_id, COUNT(*) FROM order_items a JOIN order_items b ON a.order_id=b.order_id AND a.product_id<b.product_id GROUP BY a.product_id,b.product_id;

-- 120: Multi-product orders
SELECT order_id FROM order_items GROUP BY order_id HAVING COUNT(DISTINCT product_id)>1;

-- 141: Index suggestion (analysis query)
EXPLAIN SELECT * FROM orders WHERE customer_id=1;

-- 142: Partition simulation (date filter heavy queries)
SELECT * FROM orders WHERE order_date >= '2023-06-01';

SELECT COUNT(*) FROM orders;
