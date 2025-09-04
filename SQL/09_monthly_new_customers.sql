SELECT
  FORMAT_DATE('%Y-%m', DATE(u.created_at)) AS month,
  COUNT(DISTINCT u.id) AS new_customers
FROM
  `serious-house-471006-v2.ecommerce_project.users` u
GROUP BY month
ORDER BY month;
