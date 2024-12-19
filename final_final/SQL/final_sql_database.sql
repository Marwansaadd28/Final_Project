create database final;
use final;
select * from final_dataset2;

CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(255),
    gender ENUM('Male', 'Female'),
    age INT,
    location VARCHAR(255)
);

CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(255),
    category VARCHAR(255),
    supplier VARCHAR(255)
);

CREATE TABLE Sales (
    transaction_id INT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    quantity_sold INT,
    sale_price DECIMAL(10, 2),
    sale_date DATE,
    age_group VARCHAR(255),
    total_sales DECIMAL(10, 2),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);

INSERT IGNORE INTO Customers (customer_id, customer_name, gender, age, location)
SELECT `Customer ID`, `Customer Name`, gender, age, location FROM final_dataset2;

select * from Customers;

-- Inserting data into Products table
INSERT IGNORE INTO Products (product_id, product_name, category, supplier)
SELECT `Product ID`, `Product Name`, category, supplier
FROM final_dataset2;

select * from Products;

INSERT IGNORE INTO Sales (transaction_id, customer_id, product_id, quantity_sold, sale_price, sale_date, age_group, total_sales)
SELECT `Transaction ID`, `Customer ID`, `Product ID`, `Quantity Sold`, `Sale Price`, `Date`, `Age Groups`, `Total Sales`
FROM final_dataset2;

select * from sales;



