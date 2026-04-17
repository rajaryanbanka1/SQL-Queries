-- 21: Inner join (only matching records)
SELECT c.name, o.order_id FROM customers c JOIN orders o ON c.customer_id=o.customer_id;

-- 22: Left join (retain all customers)
SELECT c.name, o.order_id FROM customers c LEFT JOIN orders o ON c.customer_id=o.customer_id;

-- 23: Anti-join (customers with no orders)
SELECT c.name FROM customers c LEFT JOIN orders o ON c.customer_id=o.customer_id WHERE o.order_id IS NULL;

-- 24: Orders + payments mapping
SELECT o.order_id, p.payment_method FROM orders o JOIN payments p ON o.order_id=p.order_id;

-- 25: Orders to order items linkage
SELECT * FROM orders o JOIN order_items oi ON o.order_id=oi.order_id;

-- 26: Product mapping
SELECT * FROM order_items oi JOIN products p ON oi.product_id=p.product_id;

-- 27: Full customer journey join
SELECT c.name, p.product_name FROM customers c
JOIN orders o ON c.customer_id=o.customer_id
JOIN order_items oi ON o.order_id=oi.order_id
JOIN products p ON oi.product_id=p.product_id;

-- 28: Cross join (all combinations, rarely used in prod)
SELECT * FROM customers CROSS JOIN products;

-- 29: Self join (repeat orders per customer)
SELECT a.order_id, b.order_id FROM orders a JOIN orders b ON a.customer_id=b.customer_id;

-- 30: Natural join (auto column match, risky)
SELECT * FROM orders NATURAL JOIN payments;

-- 31: Filter in join condition (LEFT JOIN trap fix)
SELECT * FROM orders o LEFT JOIN payments p ON o.order_id=p.order_id AND p.status='Completed';

-- 32: Right join (less common)
SELECT * FROM orders o RIGHT JOIN customers c ON o.customer_id=c.customer_id;

-- 33: Full outer join (data completeness check)
SELECT * FROM orders FULL OUTER JOIN payments ON orders.order_id=payments.order_id;

-- 34: Cities with orders
SELECT DISTINCT c.city FROM customers c JOIN orders o ON c.customer_id=o.customer_id;

-- 35: Product category demand
SELECT p.category, COUNT(*) FROM products p JOIN order_items oi ON p.product_id=oi.product_id GROUP BY p.category;

-- 36: Transactions + customers
SELECT * FROM transactions t JOIN customers c ON t.customer_id=c.customer_id;

-- 37: Total txn per customer
SELECT c.name, SUM(t.txn_amount) FROM customers c JOIN transactions t ON c.customer_id=t.customer_id GROUP BY c.name;

-- 38: Location-based filtering after join
SELECT * FROM orders o JOIN customers c ON o.customer_id=c.customer_id WHERE c.city='Kolkata';

-- 39: Failed payments (risk analysis)
SELECT * FROM payments WHERE status='Failed';

-- 40: Orders with payment count
SELECT COUNT(*) FROM orders o JOIN payments p ON o.order_id=p.order_id;
