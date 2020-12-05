SELECT x.product_name, Sales.year, Sales.price
FROM Sales
LEFT JOIN (
    SELECT product_id, product_name
    FROM Product
) as x
ON x.product_id = Sales.product_id;