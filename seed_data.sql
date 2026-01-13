-- =============================================================================
-- E-Commerce Sample Data
-- Author: Denes Csaszar  
-- Date: January 13, 2026
-- Description: Realistic sample data for testing SQL queries
-- =============================================================================

-- -----------------------------------------------------------------------------
-- Insert Customers (20 customers from different countries)
-- -----------------------------------------------------------------------------
INSERT INTO customers (first_name, last_name, email, country, city) VALUES
('Anna', 'Schmidt', 'anna.schmidt@email.de', 'Germany', 'Berlin'),
('Max', 'Müller', 'max.mueller@email.de', 'Germany', 'Munich'),
('Sophie', 'Weber', 'sophie.weber@email.de', 'Germany', 'Hamburg'),
('John', 'Smith', 'john.smith@email.com', 'USA', 'New York'),
('Emily', 'Johnson', 'emily.j@email.com', 'USA', 'Los Angeles'),
('Pierre', 'Dubois', 'pierre.d@email.fr', 'France', 'Paris'),
('Marie', 'Laurent', 'marie.l@email.fr', 'France', 'Lyon'),
('Carlos', 'Garcia', 'carlos.g@email.es', 'Spain', 'Madrid'),
('Isabella', 'Lopez', 'isabella.l@email.es', 'Spain', 'Barcelona'),
('Marco', 'Rossi', 'marco.r@email.it', 'Italy', 'Rome'),
('Julia', 'Kowalski', 'julia.k@email.pl', 'Poland', 'Warsaw'),
('Lucas', 'Silva', 'lucas.s@email.br', 'Brazil', 'São Paulo'),
('Emma', 'Brown', 'emma.b@email.co.uk', 'UK', 'London'),
('Oliver', 'Taylor', 'oliver.t@email.co.uk', 'UK', 'Manchester'),
('Sofia', 'Andersson', 'sofia.a@email.se', 'Sweden', 'Stockholm'),
('Lars', 'Jensen', 'lars.j@email.dk', 'Denmark', 'Copenhagen'),
('Nina', 'Novak', 'nina.n@email.cz', 'Czech Republic', 'Prague'),
('Kai', 'Wagner', 'kai.w@email.at', 'Austria', 'Vienna'),
('Lena', 'Fischer', 'lena.f@email.ch', 'Switzerland', 'Zurich'),
('Tom', 'Berg', 'tom.b@email.no', 'Norway', 'Oslo');

-- -----------------------------------------------------------------------------
-- Insert Products (30 products across different categories)
-- -----------------------------------------------------------------------------
INSERT INTO products (product_name, category, price, stock_quantity) VALUES
-- Electronics
('Laptop Pro 15"', 'Electronics', 1299.99, 25),
('Wireless Mouse', 'Electronics', 29.99, 150),
('USB-C Cable', 'Electronics', 12.99, 300),
('Bluetooth Headphones', 'Electronics', 89.99, 75),
('Smartphone X', 'Electronics', 899.99, 40),
('Tablet 10"', 'Electronics', 399.99, 50),
('Smart Watch', 'Electronics', 249.99, 60),

-- Clothing
('Running Shoes', 'Clothing', 79.99, 100),
('T-Shirt Classic', 'Clothing', 19.99, 200),
('Jeans Blue', 'Clothing', 59.99, 120),
('Winter Jacket', 'Clothing', 149.99, 45),
('Sneakers White', 'Clothing', 89.99, 80),

-- Home & Living
('Coffee Maker', 'Home', 79.99, 50),
('Bed Sheets Set', 'Home', 39.99, 75),
('Desk Lamp', 'Home', 34.99, 90),
('Kitchen Knife Set', 'Home', 69.99, 40),
('Vacuum Cleaner', 'Home', 199.99, 30),

-- Sports
('Yoga Mat', 'Sports', 24.99, 100),
('Dumbbell Set', 'Sports', 49.99, 60),
('Tennis Racket', 'Sports', 89.99, 35),
('Basketball', 'Sports', 29.99, 70),

-- Books
('SQL for Beginners', 'Books', 29.99, 100),
('Python Programming', 'Books', 39.99, 85),
('Web Development Guide', 'Books', 34.99, 90),
('Data Science Basics', 'Books', 44.99, 70),

-- Beauty
('Shampoo Organic', 'Beauty', 12.99, 150),
('Face Cream', 'Beauty', 24.99, 120),
('Lipstick Red', 'Beauty', 14.99, 100),
('Perfume Elegant', 'Beauty', 59.99, 50),
('Hair Dryer', 'Beauty', 39.99, 45);

-- -----------------------------------------------------------------------------
-- Insert Orders (50 orders with various statuses and dates)
-- -----------------------------------------------------------------------------
INSERT INTO orders (customer_id, order_date, total_amount, status) VALUES
-- Recent orders (last week)
(1, datetime('now', '-1 day'), 1329.98, 'delivered'),
(2, datetime('now', '-1 day'), 79.99, 'shipped'),
(3, datetime('now', '-2 days'), 149.97, 'processing'),
(4, datetime('now', '-2 days'), 899.99, 'shipped'),
(5, datetime('now', '-3 days'), 109.98, 'delivered'),
(6, datetime('now', '-3 days'), 189.98, 'delivered'),
(7, datetime('now', '-4 days'), 59.99, 'cancelled'),
(8, datetime('now', '-4 days'), 299.97, 'delivered'),
(9, datetime('now', '-5 days'), 89.99, 'shipped'),
(10, datetime('now', '-5 days'), 449.97, 'delivered'),

-- Orders from last month
(11, datetime('now', '-10 days'), 129.98, 'delivered'),
(12, datetime('now', '-12 days'), 399.99, 'delivered'),
(13, datetime('now', '-15 days'), 79.99, 'delivered'),
(14, datetime('now', '-18 days'), 249.99, 'delivered'),
(15, datetime('now', '-20 days'), 169.97, 'delivered'),
(16, datetime('now', '-22 days'), 89.99, 'delivered'),
(1, datetime('now', '-25 days'), 199.98, 'delivered'),
(2, datetime('now', '-27 days'), 299.97, 'delivered'),
(3, datetime('now', '-29 days'), 124.97, 'delivered'),
(4, datetime('now', '-30 days'), 449.98, 'delivered'),

-- Older orders (2+ months ago)
(5, datetime('now', '-35 days'), 179.98, 'delivered'),
(6, datetime('now', '-40 days'), 89.99, 'delivered'),
(7, datetime('now', '-45 days'), 249.99, 'delivered'),
(8, datetime('now', '-50 days'), 139.98, 'delivered'),
(9, datetime('now', '-55 days'), 329.97, 'delivered'),
(10, datetime('now', '-60 days'), 79.99, 'delivered'),

-- Mix of customers with repeat purchases
(1, datetime('now', '-6 days'), 89.99, 'delivered'),
(2, datetime('now', '-7 days'), 149.99, 'shipped'),
(3, datetime('now', '-8 days'), 199.98, 'processing'),
(4, datetime('now', '-9 days'), 59.99, 'delivered'),
(5, datetime('now', '-11 days'), 299.97, 'delivered'),
(11, datetime('now', '-13 days'), 179.98, 'delivered'),
(12, datetime('now', '-14 days'), 89.99, 'delivered'),
(13, datetime('now', '-16 days'), 249.97, 'delivered'),
(14, datetime('now', '-17 days'), 139.98, 'delivered'),
(15, datetime('now', '-19 days'), 199.99, 'shipped'),
(16, datetime('now', '-21 days'), 79.99, 'delivered'),
(17, datetime('now', '-23 days'), 329.97, 'delivered'),
(18, datetime('now', '-24 days'), 149.98, 'delivered'),
(19, datetime('now', '-26 days'), 89.99, 'delivered'),
(20, datetime('now', '-28 days'), 249.99, 'delivered'),

-- Recent pending orders
(1, datetime('now'), 199.99, 'pending'),
(5, datetime('now'), 89.99, 'pending'),
(10, datetime('now'), 149.99, 'pending'),
(15, datetime('now'), 79.99, 'pending'),
(20, datetime('now'), 299.99, 'pending');

-- -----------------------------------------------------------------------------
-- Insert Order Items (detailed breakdown of what was ordered)
-- -----------------------------------------------------------------------------
-- Order 1: Laptop + Mouse
INSERT INTO order_items (order_id, product_id, quantity, price) VALUES
(1, 1, 1, 1299.99),
(1, 2, 1, 29.99);

-- Order 2: Running Shoes
INSERT INTO order_items (order_id, product_id, quantity, price) VALUES
(2, 8, 1, 79.99);

-- Order 3: Multiple clothing items
INSERT INTO order_items (order_id, product_id, quantity, price) VALUES
(3, 9, 3, 19.99),
(3, 10, 1, 59.99),
(3, 11, 1, 149.99);

-- Order 4: Smartphone
INSERT INTO order_items (order_id, product_id, quantity, price) VALUES
(4, 5, 1, 899.99);

-- Order 5: Books
INSERT INTO order_items (order_id, product_id, quantity, price) VALUES
(5, 22, 1, 29.99),
(5, 23, 2, 39.99);

-- Continue with more order items...
INSERT INTO order_items (order_id, product_id, quantity, price) VALUES
(6, 4, 2, 89.99),
(7, 10, 1, 59.99),
(8, 11, 1, 149.99),
(8, 8, 1, 79.99),
(8, 9, 2, 19.99),
(9, 12, 1, 89.99),
(10, 1, 1, 1299.99),
(10, 13, 1, 79.99),
(10, 14, 1, 39.99),
(11, 15, 1, 34.99),
(11, 16, 1, 69.99),
(11, 9, 2, 19.99),
(12, 6, 1, 399.99),
(13, 8, 1, 79.99),
(14, 7, 1, 249.99),
(15, 18, 2, 24.99),
(15, 19, 1, 49.99),
(15, 20, 1, 89.99),
(16, 21, 1, 29.99),
(16, 22, 2, 29.99),
(17, 25, 2, 12.99),
(17, 26, 3, 24.99),
(17, 27, 2, 14.99),
(17, 28, 1, 59.99),
(18, 1, 1, 1299.99),
(18, 2, 2, 29.99),
(18, 3, 5, 12.99),
(19, 18, 3, 24.99),
(19, 19, 1, 49.99),
(20, 23, 2, 39.99);

-- Add order items for remaining orders (simplified)
INSERT INTO order_items (order_id, product_id, quantity, price) 
SELECT 
    order_id, 
    (order_id % 29) + 1 as product_id,
    1 as quantity,
    (SELECT price FROM products WHERE product_id = (order_id % 29) + 1)
FROM orders 
WHERE order_id > 20;

-- -----------------------------------------------------------------------------
-- End of Seed Data
-- -----------------------------------------------------------------------------

-- Quick verification query
SELECT 
    'Customers' as table_name, COUNT(*) as count FROM customers
UNION ALL
SELECT 'Products', COUNT(*) FROM products
UNION ALL
SELECT 'Orders', COUNT(*) FROM orders
UNION ALL
SELECT 'Order Items', COUNT(*) FROM order_items;

