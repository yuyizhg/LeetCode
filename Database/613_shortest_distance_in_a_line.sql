SELECT MIN(a.x - b.x) AS shortest
FROM point a, point b
WHERE a.x > b.x;