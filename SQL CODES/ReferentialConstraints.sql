CREATE TABLE Customer(
id INT PRIMARY KEY, 
cName varchar(50), 
Gender char(2),
Pincode INT
);
INSERT INTO Customer VALUES (001, 'Pratham', 'M', 421004);
SELECT * FROM Customer;	
CREATE TABLE Order_Details(
Order_id INT PRIMARY KEY,
Delivery_date DATE, 
Cust_id INT, 
FOREIGN KEY(Cust_id) references Customer(id) ON DELETE SET NULL
);
INSERT INTO order_details VALUES
(1001, '2020-02-11', 001);
INSERT INTO order_details VALUES
(1002, '2020-02-13', 001);

SELECT * FROM order_details;

DELETE FROM Customer WHERE id= 001;
DROP TABLE order_details;
-- REPLACE 
REPLACE INTO customer (id, cName, Gender, Pincode) values (001, 'Pratham', 'M', 4030392);
REPLACE INTO Customer SET id= 002, cName= 'Shruti', Pincode= 421004, Gender= 'F';