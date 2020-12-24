SELECT seller_id
FROM Sales
GROUP BY Seller_id
HAVING SUM(price) = (
    SELECT SUM(price) AS p
    FROM Sales
    GROUP BY seller_id
    ORDER BY p DESC
    LIMIT 1
    );