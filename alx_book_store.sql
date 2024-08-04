CREATE DATABASE IF NOT EXISTS alx_book_store;
USE alx_book_store;

CREATE TABLE Authors(
    author_id INT PRIMARY KEY,
    author_name VARCHAR(215)
);
CREATE TABLE Books(
    book_id INT PRIMARY KEY,
    title VARCHAR(130),
    author_id INT,
    FOREIGN KEY(author_id) REFERENCES Authors(author_id),
    PRICE DOUBLE,
    publication_date DATE
);

CREATE TABLE Customers(
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(215),
    email VARCHAR(215),
    adress TEXT 
);
CREATE TABLE Orders(
    order_id  INT PRIMARY KEY,
    customer_id INT
    FOREIGN KEY(customer_id) REFERENCES Customers(customer_id),
    order_date DATE
);
CREATE Order_Details(
    order_detail_id INT PRIMARY KEY,
    order_id INT,
    book_id INT,
    FOREIGN KEY(order_id) REFERENCES ORDERS(order_id),
    FOREIGN KEY(book_id) REFERENCES books(book_id),
    quantity DOUBLE);
