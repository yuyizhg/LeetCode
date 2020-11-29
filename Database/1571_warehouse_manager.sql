SELECT Warehouse.name as warehouse_name, sum(Products.Width * Products.Length * Products.Height * Warehouse.units) as volume
FROM Warehouse
LEFT JOIN Products on Warehouse.product_id = Products.product_id
GROUP BY warehouse_name;