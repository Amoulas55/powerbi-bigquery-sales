SELECT
  ii.product_name,
  COUNT(ii.id) AS total_units_sold
FROM
  `serious-house-471006-v2.ecommerce_project.inventory_items` ii
WHERE ii.sold_at IS NOT NULL
GROUP BY ii.product_name
ORDER BY total_units_sold DESC
LIMIT 10;
