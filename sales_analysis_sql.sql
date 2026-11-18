create database sales;
use sales;

-- Synthetic data only. Use a local practice SQLite database.
CREATE TABLE products(id INTEGER PRIMARY KEY,name TEXT,price REAL);
CREATE TABLE orders(id INTEGER PRIMARY KEY,region TEXT,total_amount REAL);
CREATE TABLE customers(id INTEGER PRIMARY KEY,name TEXT,total_spent REAL);
INSERT INTO products VALUES(1,'Sample book',600),(2,'Sample pen',100),(3,'Sample bag',1200);
INSERT INTO orders VALUES(1,'West',1000),(2,'East',700),(3,'West',300);
INSERT INTO customers VALUES(1,'Sample A',900),(2,'Sample B',1800);
-- Write the five answers below.
select * from products;
select * from orders;
select * from customers;

-- 1. Find products priced above 500
select * from products where price > 500;

-- 2.  Count orders from the West region
select count(id) as West_orders from orders where region = 'West';

-- 3. Calculate total revenue from West orders
select sum(total_amount) as West_revenue from orders where region = 'West';

-- 4. List customers by spending
select * from customers order by total_spent desc;

-- 5. Calculate the average product price
select round(avg(price),3) as Avg_product_price from products;