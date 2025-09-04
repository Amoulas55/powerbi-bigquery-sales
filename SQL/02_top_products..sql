SELECT
  p.name AS product_name,
  SUM(oi.sale_price) AS total_revenue
FROM
  `serious-house-471006-v2.ecommerce_project.order_items` oi
JOIN
  `serious-house-471006-v2.ecommerce_project.products` p
ON oi.product_id = p.id
GROUP BY product_name
ORDER BY total_revenue DESC
LIMIT 10;
