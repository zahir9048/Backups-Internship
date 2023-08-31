SELECT * FROM zahirdb.customers;
use zahirdb;

#JOIN 3 tables and then apply WHERE CONDITION
SELECT c.id AS cust_id, c.name AS cust_name, p.product_id 
FROM customers c
INNER JOIN orders o 
ON o.order_id = c.order_id
INNER JOIN products p 
ON p.product_id = o.product_id
WHERE p.product_id = 4
ORDER BY c.id;

#JOIN ANOTHER EXAMPLE
SELECT c.name AS customer_name, p.product_id, p.name AS product_name 
FROM products p
INNER JOIN orders o 
ON o.product_id = p.product_id
INNER JOIN customers c 
ON c.order_id = o.order_id
WHERE c.name = 'darren'
ORDER BY c.name;