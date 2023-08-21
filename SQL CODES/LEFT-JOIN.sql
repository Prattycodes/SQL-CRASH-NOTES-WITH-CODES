-- LEFT JOIN 
-- FETCH out all customers with there order details
SELECT * FROM customer as c
LEFT JOIN order_details as o ON c.id= o.Cust_id;