CREATE DATABASE temp;
USE temp;
CREATE TABLE Customer(
id INT PRIMARY KEY, 
cName varchar(50), 
Gender char(2)
);
CREATE TABLE Order_Details(
Order_ID INT PRIMARY KEY, 
cust_ID INT, 
FOREIGN KEY (cust_ID) references Customer(id)
);
USE temp;
CREATE TABLE Account(
ID INT PRIMARY KEY,
NAME VARCHAR (255) UNIQUE, 
BALANCE INT, 
CONSTRAINT ACC_BALANCE CHECK(BALANCE > 1000)
);
INSERT INTO Account(ID, NAME, BALANCE) VALUES 
(1, 'Pratham', 10000);
SELECT * FROM Account;
INSERT INTO Account(ID, NAME, BALANCE) VALUES 
(2, 'Shruti', 20000);
DROP  TABLE Account;
CREATE TABLE Account(
ID INT PRIMARY KEY,
NAME VARCHAR (255) UNIQUE, 
BALANCE INT NOT NULL DEFAULT 0
);
INSERT INTO Account(ID, NAME) VALUES 
(1, 'Pratham' );
SELECT * FROM Account;
INSERT INTO Account(ID, NAME ) VALUES 
(2, 'Shruti');
-- ADD new COlumn
ALTER TABLE Account ADD Interest FLOAT NOT NULL DEFAULT 0 ; 
-- MODIFY 
ALTER TABLE Account MODIFY Interest DOUBLE NOT NULL DEFAULT 0;	
DESC Customer;
-- Change Column Name 
ALTER TABLE Account CHANGE COLUMN Interest SavingInterest FLOAT NOT NULL DEFAULT 0;
-- DROP COLUMN SavingInterest;
ALTER TABLE Account DROP COLUMN SavingInterest;
-- RENAME TABLE NAME 
ALTER TABLE Account RENAME TO Account_Details;
USE temp;
SELECT * FROM Customer;
INSERT INTO Customer VALUES (1, 'PRATHAM', 'M');
INSERT INTO Customer (id, cName) VALUES (2, 'SHRUTI');
UPDATE Customer SET Gender='F' WHERE id= 2;
-- Update Multiple Row 
SET SQL_SAFE_UPDATES = 1;
UPDATE Customer SET Gender= 'F';
DELETE FROM Customer WHERE id= 2;
DROP TABLE order_details;
DROP TABLE account_details;
DROP TABLE Customer;