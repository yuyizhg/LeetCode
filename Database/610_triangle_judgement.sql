SELECT *,
CASE WHEN x + y > z AND x + z > y AND y + z > x
     THEN 'Yes'
     ELSE 'No'
END AS triangle
FROM triangle;



SELECT *,
CASE WHEN x + y <= z OR x + z <= y OR y + z <= x
     THEN 'No'
     ELSE 'Yes'
END AS triangle
FROM triangle;