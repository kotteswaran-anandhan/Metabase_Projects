CREATE TABLE customers (
  customer_id INT PRIMARY KEY,
  name VARCHAR(50),
  city VARCHAR(30)
);

CREATE TABLE products (
  product_id INT PRIMARY KEY,
  product_name VARCHAR(50),
  category VARCHAR(30),
  price DECIMAL(10,2)
);

CREATE TABLE orders (
  order_id INT PRIMARY KEY,
  customer_id INT,
  product_id INT,
  quantity INT,
  order_date DATE,
  FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
  FOREIGN KEY (product_id) REFERENCES products(product_id)
);

INSERT INTO customers VALUES
(1,'Arun','Bengaluru'),(2,'Priya','Mumbai'),(3,'Rahul','Delhi'),
(4,'Sneha','Chennai'),(5,'Karthik','Hyderabad'),(6,'Divya','Bengaluru'),
(7,'Vikram','Mumbai'),(8,'Anjali','Delhi'),(9,'Suresh','Chennai'),
(10,'Meena','Hyderabad');

INSERT INTO products VALUES
(1,'Laptop','Electronics',55000),
(2,'Phone','Electronics',25000),
(3,'Headphones','Electronics',3000),
(4,'T-Shirt','Fashion',800),
(5,'Jeans','Fashion',1800),
(6,'Shoes','Fashion',3500),
(7,'Mixer Grinder','Home',4500),
(8,'Study Table','Home',6000),
(9,'Novel','Books',400),
(10,'Textbook','Books',900);

INSERT INTO orders VALUES
(1,1,1,1,'2025-01-10'),(2,2,2,1,'2025-01-15'),(3,3,4,3,'2025-02-02'),
(4,4,5,2,'2025-02-14'),(5,5,3,1,'2025-02-20'),(6,6,7,1,'2025-03-05'),
(7,7,6,2,'2025-03-18'),(8,8,9,5,'2025-03-25'),(9,9,10,2,'2025-04-02'),
(10,10,8,1,'2025-04-11'),(11,1,2,1,'2025-04-20'),(12,2,4,4,'2025-05-03'),
(13,3,1,1,'2025-05-15'),(14,4,3,2,'2025-05-28'),(15,5,5,3,'2025-06-07'),
(16,6,6,1,'2025-06-19'),(17,7,7,2,'2025-07-04'),(18,8,2,1,'2025-07-16'),
(19,9,9,3,'2025-08-01'),(20,10,10,4,'2025-08-12'),(21,1,8,1,'2025-09-09'),
(22,2,1,1,'2025-09-21'),(23,3,5,2,'2025-10-05'),(24,4,4,5,'2025-10-18'),
(25,5,2,1,'2025-11-03'),(26,6,3,2,'2025-11-15'),(27,7,6,1,'2025-12-01'),
(28,8,7,1,'2025-12-12'),(29,9,1,1,'2025-12-20'),(30,10,9,6,'2025-12-28');