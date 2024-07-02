-- DROP DATABASE
DROP DATABASE IF EXISTS ecommerce_db;

-- CREATE DATABASE
CREATE DATABASE ecommerce_db;

-- USE DATABASE

USE ecommerce_db;

-- CREATE TABLES
CREATE TABLE categories (
    id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    category_name VARCHAR(30) NOT NULL
);

CREATE TABLE products (
    id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(30) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    stock INT NOT NULL DEFAULT 10 NUMERIC,
    category_id INT,
    FOREIGN KEY (category_id) REFERENCES categories(id)
);

CREATE TABLE tags (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    product_id INT REFERENCES products(id),
    tag_id INT REFERENCES tags(id)
);

--INSERT INTO TABLES

INSERT INTO categories (category_name) VALUES ('Clothing');
('Shirts'),
('Pants'),
('Shoes'),
('Hats'),
('Jewelry');

INSERT INTO products (product_name, price, stock, category_id) VALUES ('T-shirt', 15.00, 14, 1),
('Polo', 20.00, 12, 1),
('Dress Pants', 35.00, 5, 2),
('Jeans', 40.00, 8, 2),
('Sneakers', 50.00, 10, 3),
('Dress Shoes', 60.00, 6, 3),
('Baseball Cap', 15.00, 22, 4),
('Beanie', 10.00, 18, 4),
('Necklace', 25.00, 10, 5),
('Bracelet', 20.00, 15, 5);

INSERT INTO tags (product_id, tag_id) VALUES (1, 1),
(1, 2),
(2, 1),
(2, 2),
(3, 3),
(3, 4),
(4, 3),
(4, 4),
(5, 5),
(5, 6),
(6, 5),
(6, 6),
(7, 7),
(7, 8),
(8, 7),
(8, 8),
(9, 9),
(9, 10),
(10, 9),
(10, 10);




