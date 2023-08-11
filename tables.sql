-- Create the "items" table
CREATE TABLE items (
  item_number INT PRIMARY KEY,
  customer_id INT,
  price DECIMAL(10, 2),
  name VARCHAR(255),
  FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

-- Create the "customers" table
CREATE TABLE customers (
  customer_id INT PRIMARY KEY,
  purchases INT,
  date_of_joining DATE,
  address VARCHAR(255)
);

-- Create the "delivery" table
CREATE TABLE delivery (
  delivery_date DATE,
  item_number INT,
  delivery_address VARCHAR(255),
  FOREIGN KEY (item_number) REFERENCES items(item_number)
);


INSERT INTO items (item_number, customer_id, price, name)
VALUES
(1, 1, 10.99, 'Item 1'),
(2, 2, 19.99, 'Item 2'),
(3, 1, 15.99, 'Item 3'),
(4, 3, 8.99, 'Item 4'),
(5, 2, 12.99, 'Item 5'),
(6, 3, 9.99, 'Item 6'),
(7, 1, 14.99, 'Item 7'),
(8, 2, 11.99, 'Item 8'),
(9, 3, 7.99, 'Item 9'),
(10, 1, 16.99, 'Item 10');

For the "customers" table:
INSERT INTO customers (customer_id, purchases, date_of_joining, address)
VALUES
(1, 5, '2022-01-01', '123 Main St'),
(2, 8, '2022-02-15', '456 Elm St'),
(3, 3, '2022-03-10', '789 Oak St'),
(4, 2, '2022-04-20', '321 Pine St'),
(5, 6, '2022-05-05', '654 Maple St'),
(6, 4, '2022-06-30', '987 Cedar St'),
(7, 7, '2022-07-15', '159 Birch St'),
(8, 1, '2022-08-25', '753 Walnut St'),
(9, 9, '2022-09-10', '246 Spruce St'),
(10, 10, '2022-10-20', '531 Fir St');

For the "delivery" table:
INSERT INTO delivery (delivery_date, item_number, delivery_address)
VALUES
('2022-01-05', 1, '123 Main St'),
('2022-02-20', 2, '456 Elm St'),
('2022-03-15', 3, '789 Oak St'),
('2022-04-25', 4, '321 Pine St'),
('2022-05-10', 5, '654 Maple St'),
('2022-06-25', 6, '987 Cedar St'),
('2022-07-20', 7, '159 Birch St'),
('2022-08-30', 8, '753 Walnut St'),
('2022-09-15', 9, '246 Spruce St'),
('2022-10-25', 10, '531 Fir St');
