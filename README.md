This is an example for a database model for an online shopping system which contains the following tables
(All the data is imaginary and used only for learning purposes)

SQL Tables

Items Table
item_number (Primary Key): The unique identifier for each item.

customer_id (Foreign Key from Customer Table): The ID of the customer who purchased the item.

price: The price of the item.

name: The name of the item.

Customer Table
customer_id (Primary Key): The unique identifier for each customer.

purchases: The number of purchases made by the customer.

date_of_joining: The date when the customer joined.

address: The address of the customer.

Delivery Table
delivery_date: The date when the item was delivered.

item_number (Foreign Key from Items Table): The item number of the delivered item.

delivery_address: The address where the item was delivered.
