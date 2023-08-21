SELECT * FROM customer;
SELECT * FROM order_details;
-- INNER JOIN
SELECT c.id, c.cName, c.gender, o.delivery_date from customer as c
INNER JOIN order_details as o ON c.id= o.Cust_id;
-- WITHOUT INNER JOIN 
SELECT c.id, c.cName, c.gender, o.delivery_date from customer as c, 
 order_details as o WHERE c.id= o.Cust_id;