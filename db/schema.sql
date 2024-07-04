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
    stock INT NOT NULL DEFAULT 10,
    category_id INT,
    FOREIGN KEY (category_id) REFERENCES categories(id)
);

CREATE TABLE tags (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    product_id INT REFERENCES products(id),
    tag_name VARCHAR(30) NOT NULL
);

CREATE TABLE productTag(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    product_id INT ,
    tag_id INT,
    FOREIGN KEY (product_id) REFERENCES products(id),
    FOREIGN KEY (tag_id) REFERENCES tags(id)
);





