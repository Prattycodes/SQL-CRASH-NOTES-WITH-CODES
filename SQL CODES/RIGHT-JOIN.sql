-- Right JOIN 
-- All Orders with there customer name gender 
SELECT o.Order_id, o.delivery_date, c.id, c.cName, c.gender FROM customer as c
RIGHT JOIN order_details as o ON c.id= o.Cust_id;