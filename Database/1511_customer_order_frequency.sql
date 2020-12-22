SELECT c.customer_id, c.name
FROM Orders o
LEFT JOIN Product p
ON o.product_id = p.product_id
LEFT JOIN Customers c
ON o.customer_id = c.customer_id

GROUP BY o.customer_id
HAVING SUM(IF(SUBSTRING(o.order_date, 1, 7) = '2020-06', o.quantity, 0) * p.price) >= 100
   AND SUM(IF(SUBSTRING(o.order_date, 1, 7) = '2020-07', o.quantity, 0) * p.price) >= 100;