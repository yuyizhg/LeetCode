SELECT DISTINCT(a.seat_id)
FROM cinema a
JOIN cinema b
ON ABS(a.seat_id - b.seat_id) = 1
AND a.free = 1 AND b.free = 1
ORDER BY seat_id;