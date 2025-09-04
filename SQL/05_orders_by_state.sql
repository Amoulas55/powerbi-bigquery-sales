SELECT
  u.state,
  COUNT(DISTINCT o.order_id) AS total_orders,
  SUM(oi.sale_price) AS total_revenue
FROM
  `serious-house-471006-v2.ecommerce_project.order_items` oi
JOIN
  `serious-house-471006-v2.ecommerce_project.orders` o
ON oi.order_id = o.order_id
JOIN
  `serious-house-471006-v2.ecommerce_project.users` u
ON o.user_id = u.id
GROUP BY u.state
ORDER BY total_revenue DESC;
