SELECT
  u.id AS customer_id,
  COUNT(DISTINCT o.order_id) AS total_orders
FROM
  `serious-house-471006-v2.ecommerce_project.orders` o
JOIN
  `serious-house-471006-v2.ecommerce_project.users` u
ON o.user_id = u.id
GROUP BY u.id
HAVING total_orders > 1
ORDER BY total_orders DESC
LIMIT 10;
