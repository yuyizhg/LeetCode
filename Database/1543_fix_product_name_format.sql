SELECT TRIM(LOWER(product_name)) AS product_name, SUBSTRING(sale_date, 1, 7) AS sale_date, COUNT(sale_id) AS total
FROM Sales
GROUP BY 1, 2
ORDER BY 1 ASC, 2 ASC;