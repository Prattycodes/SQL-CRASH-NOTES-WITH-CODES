-- MINUS 
SELECT customer.* FROM customer LEFT JOIN Customer2 using (id) 
WHERE customer2.id is NULL;