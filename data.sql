-- Sample Data
INSERT INTO customers VALUES
(1, 'Raj', 'Kolkata', '2023-01-10'),
(2, 'Amit', 'Delhi', '2023-02-15'),
(3, 'Sneha', 'Mumbai', '2023-03-20'),
(4, 'Priya', 'Bangalore', '2023-04-05'),
(5, 'Karan', 'Kolkata', '2023-05-12');

INSERT INTO products VALUES
(101, 'Laptop', 'Electronics', 60000),
(102, 'Phone', 'Electronics', 30000),
(103, 'Table', 'Furniture', 7000),
(104, 'Chair', 'Furniture', 3000),
(105, 'Headphones', 'Accessories', 2000);

INSERT INTO orders VALUES
(1001, 1, '2023-06-01', 5000),
(1002, 2, '2023-06-05', 15000),
(1003, 1, '2023-06-10', 7000),
(1004, 3, '2023-06-15', 20000),
(1005, 4, '2023-06-20', 8000);

INSERT INTO order_items VALUES
(1, 1001, 101, 1, 60000),
(2, 1001, 105, 2, 2000),
(3, 1002, 102, 1, 30000),
(4, 1003, 103, 1, 7000),
(5, 1004, 101, 1, 60000),
(6, 1005, 104, 2, 3000);

INSERT INTO payments VALUES
(1, 1001, 'UPI', 'Completed'),
(2, 1002, 'Credit Card', 'Completed'),
(3, 1003, 'Debit Card', 'Failed'),
(4, 1004, 'UPI', 'Completed'),
(5, 1005, 'Net Banking', 'Pending');

INSERT INTO transactions VALUES
(201, 1, '2023-06-01', 5000, 'Debit'),
(202, 2, '2023-06-05', 15000, 'Debit'),
(203, 3, '2023-06-07', 2000, 'Credit'),
(204, 1, '2023-06-10', 7000, 'Debit'),
(205, 4, '2023-06-12', 8000, 'Debit');
