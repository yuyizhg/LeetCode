# Write your MySQL query statement below

SELECT DISTINCT(p.name), SUM(i.rest) AS rest, SUM(i.paid) AS paid, SUM(i.canceled) AS canceled, SUM(i.refunded) AS refunded
FROM Product AS p
INNER JOIN Invoice as i
ON p.product_id = i.product_id
GROUP BY p.name
ORDER BY p.name ASC;