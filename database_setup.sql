DROP TABLE IF EXISTS order_items;
DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS products;
DROP TABLE IF EXISTS customers;

CREATE TABLE customers (
    customer_id INTEGER PRIMARY KEY,
    customer_name TEXT,
    region TEXT,
    segment TEXT
);

CREATE TABLE products (
    product_id INTEGER PRIMARY KEY,
    product_name TEXT,
    category TEXT
);
CREATE TABLE orders (
    order_id INTEGER PRIMARY KEY,
    customer_id INTEGER,
    order_date TEXT,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

CREATE TABLE order_items (
    order_item_id INTEGER PRIMARY KEY,
    order_id INTEGER,
    product_id INTEGER,
    quantity INTEGER,
    sales REAL,
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

INSERT INTO customers (customer_id, customer_name, region, segment) VALUES
(1, 'Alpha Stores', 'North', 'Consumer'),
(2, 'Bright Retail', 'South', 'Corporate'),
(3, 'City Mart', 'East', 'Consumer'),
(4, 'Delta Supplies', 'West', 'Home Office'),
(5, 'Evergreen Ltd', 'North', 'Corporate'),
(6, 'Fusion Traders', 'South', 'Consumer'),
(7, 'Global Bazaar', 'East', 'Corporate'),
(8, 'Horizon Shop', 'West', 'Consumer'),
(9, 'Insight Market', 'North', 'Home Office'),
(10, 'Jade Enterprises', 'South', 'Corporate');

INSERT INTO products (product_id, product_name, category) VALUES
(101, 'Laptop', 'Technology'),
(102, 'Mouse', 'Technology'),
(103, 'Desk Chair', 'Furniture'),
(104, 'Standing Desk', 'Furniture'),
(105, 'Printer Paper', 'Office Supplies'),
(106, 'Notebook', 'Office Supplies'),
(107, 'Monitor', 'Technology'),
(108, 'Bookshelf', 'Furniture');

INSERT INTO orders (order_id, customer_id, order_date) VALUES
(1001, 1, '2025-01-05'),
(1002, 2, '2025-01-08'),
(1003, 3, '2025-01-12'),
(1004, 4, '2025-01-15'),
(1005, 5, '2025-01-20'),
(1006, 6, '2025-01-22'),
(1007, 7, '2025-02-02'),
(1008, 8, '2025-02-05'),
(1009, 9, '2025-02-10'),
(1010, 10, '2025-02-14'),
(1011, 1, '2025-02-18'),
(1012, 2, '2025-02-20'),
(1013, 3, '2025-03-01'),
(1014, 4, '2025-03-03'),
(1015, 5, '2025-03-08');

INSERT INTO order_items (order_item_id, order_id, product_id, quantity, sales) VALUES
(1, 1001, 101, 1, 1200.00),
(2, 1001, 102, 2, 50.00),
(3, 1002, 103, 1, 180.00),
(4, 1002, 105, 5, 40.00),
(5, 1003, 104, 1, 350.00),
(6, 1003, 106, 3, 15.00),
(7, 1004, 107, 2, 500.00),
(8, 1004, 105, 10, 75.00),
(9, 1005, 108, 1, 220.00),
(10, 1005, 103, 2, 360.00),
(11, 1006, 102, 4, 100.00),
(12, 1006, 106, 6, 30.00),
(13, 1007, 101, 1, 1250.00),
(14, 1007, 107, 1, 260.00),
(15, 1008, 104, 1, 340.00),
(16, 1008, 108, 2, 440.00),
(17, 1009, 105, 8, 64.00),
(18, 1009, 106, 10, 50.00),
(19, 1010, 103, 3, 540.00),
(20, 1010, 102, 1, 25.00),
(21, 1011, 107, 2, 520.00),
(22, 1011, 105, 4, 32.00),
(23, 1012, 101, 1, 1180.00),
(24, 1012, 106, 5, 25.00),
(25, 1013, 108, 1, 210.00),
(26, 1013, 103, 1, 175.00),
(27, 1014, 104, 2, 700.00),
(28, 1014, 102, 3, 75.00),
(29, 1015, 101, 2, 2400.00),
(30, 1015, 107, 1, 255.00);