SELECT 
c.first_name,
c.last_name,
o.order_id,
o.order_date,
o.total_amount
FROM customers c
JOIN orders o 
ON c.customer_id = o.customer_id
ORDER BY o.order_date DESC;
