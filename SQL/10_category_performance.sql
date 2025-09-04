SELECT
  p.category AS product_category,
  SUM(oi.sale_price) AS total_revenue,
  COUNT(DISTINCT oi.order_id) AS total_orders
FROM
  `serious-house-471006-v2.ecommerce_project.order_items` oi
JOIN
  `serious-house-471006-v2.ecommerce_project.products` p
ON oi.product_id = p.id
GROUP BY product_category
ORDER BY total_revenue DESC;
