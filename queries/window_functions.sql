-- 61: Row number ranking
SELECT order_id, ROW_NUMBER() OVER(ORDER BY amount DESC) FROM orders;

-- 62: Rank with gaps
SELECT order_id, RANK() OVER(ORDER BY amount DESC) FROM orders;

-- 63: Dense rank (no gaps)
SELECT order_id, DENSE_RANK() OVER(ORDER BY amount DESC) FROM orders;

-- 64: Running revenue total
SELECT order_date, SUM(amount) OVER(ORDER BY order_date) FROM orders;

-- 65: Customer-wise cumulative revenue
SELECT customer_id, SUM(amount) OVER(PARTITION BY customer_id) FROM orders;

-- 66: Previous order value (LAG)
SELECT order_id, LAG(amount) OVER(ORDER BY order_date) FROM orders;

-- 67: Next order value (LEAD)
SELECT order_id, LEAD(amount) OVER(ORDER BY order_date) FROM orders;

-- 68: Quartile segmentation
SELECT order_id, NTILE(4) OVER(ORDER BY amount) FROM orders;

-- 69: Highest value per dataset
SELECT order_id, FIRST_VALUE(amount) OVER(ORDER BY amount DESC) FROM orders;

-- 70: Last value behavior (frame sensitive)
SELECT order_id, LAST_VALUE(amount) OVER(ORDER BY amount ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) FROM orders;

-- 71: Total revenue repeated per row
SELECT order_id, SUM(amount) OVER() FROM orders;

-- 72: Order count per customer
SELECT customer_id, COUNT(*) OVER(PARTITION BY customer_id) FROM orders;

SELECT *, MAX(amount) OVER() FROM orders;
