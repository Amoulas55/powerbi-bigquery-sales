SELECT
  FORMAT_DATE('%Y-%m', DATE(o.created_at)) AS month,
  SUM(oi.sale_price) AS total_revenue
FROM
  `serious-house-471006-v2.ecommerce_project.order_items` oi
JOIN
  `serious-house-471006-v2.ecommerce_project.orders` o
ON oi.order_id = o.order_id
GROUP BY month
ORDER BY month;
