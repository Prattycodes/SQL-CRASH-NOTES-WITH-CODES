-- INTERSECT 
-- customer. for removing extra column, because we are emulation INNER JOIN 
SELECT customer.* FROM customer 
INNER JOIN 
Customer2 using(id);