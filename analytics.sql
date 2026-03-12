#Пример аналитического запроса - топ-5 клиентов по расходам

SELECT 
c.first_name,
c.last_name,
SUM(o.total_amount) AS total_spent
FROM customers c
JOIN orders o 
ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name
ORDER BY total_spent DESC
LIMIT 5;
