SELECT p.product_id, ROUND(SUM(p.price * u.units)/SUM(u.units), 2) AS average_price
FROM Prices as p
LEFT JOIN UnitsSold as u
ON p.product_id = u.product_id AND u.purchase_date BETWEEN start_date AND end_date
GROUP BY p.product_id;