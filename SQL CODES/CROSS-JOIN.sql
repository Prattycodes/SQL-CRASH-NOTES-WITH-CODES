-- CROSS JOIN
SELECT c.cname, c.gender, o.order_id, o.delivery_date FROM Customer as c
CROSS JOIN order_details as o;