-- 1: Fetch all customer records (baseline data exploration)
SELECT * FROM customers;

-- 2: Select specific columns for lightweight query
SELECT name, city FROM customers;

-- 3: Filter customers by city (segmentation)
SELECT * FROM customers WHERE city = 'Kolkata';

-- 4: Count total customers (volume check)
SELECT COUNT(*) FROM customers;

-- 5: Unique cities (dimension exploration)
SELECT DISTINCT city FROM customers;

-- 6: High value orders filter (business threshold)
SELECT * FROM orders WHERE amount > 5000;

-- 7: Sort orders by value (ranking prep)
SELECT * FROM orders ORDER BY amount DESC;

-- 8: Top N analysis
SELECT * FROM orders LIMIT 3;

-- 9: Revenue per customer (basic aggregation)
SELECT customer_id, SUM(amount) FROM orders GROUP BY customer_id;

-- 10: Order count per customer (frequency metric)
SELECT customer_id, COUNT(*) FROM orders GROUP BY customer_id;

-- 11: Min & max order value (range understanding)
SELECT MIN(amount), MAX(amount) FROM orders;

-- 12: Average order value (AOV metric)
SELECT AVG(amount) FROM orders;

-- 13: Mid-range priced products
SELECT * FROM products WHERE price BETWEEN 2000 AND 10000;

-- 14: Category filtering (dimension slicing)
SELECT * FROM products WHERE category IN ('Electronics','Furniture');

-- 15: Pattern match (search use-case)
SELECT * FROM customers WHERE name LIKE 'R%';

-- 16: Recent signups (growth tracking)
SELECT * FROM customers WHERE signup_date > '2023-03-01';

-- 17: Derived column (tax calculation example)
SELECT order_id, amount*0.1 AS tax FROM orders;

-- 18: Conditional segmentation
SELECT *, CASE WHEN amount>10000 THEN 'High' ELSE 'Low' END FROM orders;

-- 19: Unique active customers
SELECT COUNT(DISTINCT customer_id) FROM orders;

-- 20: Customer distribution by city
SELECT city, COUNT(*) FROM customers GROUP BY city;
