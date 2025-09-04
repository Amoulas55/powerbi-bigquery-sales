SELECT
  AVG(order_revenue) AS avg_order_value
FROM (
  SELECT
    o.order_id,
    SUM(oi.sale_price) AS order_revenue
  FROM
    `serious-house-471006-v2.ecommerce_project.order_items` oi
  JOIN
    `serious-house-471006-v2.ecommerce_project.orders` o
  ON oi.order_id = o.order_id
  GROUP BY o.order_id
);
