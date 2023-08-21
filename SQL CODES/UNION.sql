-- UNION 
SELECT * FROM customer 
UNION SELECT * FROM customer2;

SELECT * FROM customer WHERE Gender= 'M'
UNION 
SELECT * FROM customer2 WHERE Gender= 'M';