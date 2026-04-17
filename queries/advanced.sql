-- 81: Above average orders
SELECT * FROM orders WHERE amount > (SELECT AVG(amount) FROM orders);

-- 82: Above customer average (correlated subquery)
SELECT * FROM orders o WHERE amount > (SELECT AVG(amount) FROM orders WHERE customer_id=o.customer_id);

-- 83: CTE for modular query building
WITH cte AS (SELECT customer_id, SUM(amount) revenue FROM orders GROUP BY customer_id) SELECT * FROM cte;

-- 84: Customers with orders (EXISTS)
SELECT * FROM customers WHERE EXISTS (SELECT 1 FROM orders WHERE customers.customer_id=orders.customer_id);

-- 85: Customers without orders (NOT EXISTS)
SELECT * FROM customers WHERE NOT EXISTS (SELECT 1 FROM orders WHERE customers.customer_id=orders.customer_id);

-- 86: Orders with payments
SELECT * FROM orders WHERE order_id IN (SELECT order_id FROM payments);

-- 87: Orders without payments
SELECT * FROM orders WHERE order_id NOT IN (SELECT order_id FROM payments);

-- 88: Common customers across systems
SELECT DISTINCT customer_id FROM orders INTERSECT SELECT customer_id FROM transactions;

-- 89: All customers across systems
SELECT customer_id FROM orders UNION SELECT customer_id FROM transactions;

-- 90: Customers only in orders
SELECT customer_id FROM orders EXCEPT SELECT customer_id FROM transactions;

-- 91: Row ranking inside dataset
SELECT *, ROW_NUMBER() OVER(PARTITION BY customer_id ORDER BY amount DESC) rn FROM orders;

-- 92: Top order per customer
SELECT * FROM (SELECT *, ROW_NUMBER() OVER(PARTITION BY customer_id ORDER BY amount DESC) rn FROM orders) t WHERE rn=1;

SELECT COUNT(*) FROM orders WHERE amount>10000;
