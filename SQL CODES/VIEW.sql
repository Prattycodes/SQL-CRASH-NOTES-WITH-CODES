-- VIEW 
SELECT * FROM customer;
-- Creating a VIEW 
CREATE VIEW custom_view AS SELECT cName, Pincode FROM Customer;

-- VIEWING FROM VIEW 
SELECT * FROM custom_view;
-- ALTERING THE VIEW 
ALTER VIEW custom_view as SELECT cName, Gender FROM Customer;
-- DROPING THE VIEW
DROP VIEW IF EXISTS custom_view;
