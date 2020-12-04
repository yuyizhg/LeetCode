SELECT Users.name, IFNULL(x.distance, 0) as travelled_distance
FROM Users
LEFT JOIN (
    SELECT user_id, SUM(distance) AS distance
    FROM Rides
    GROUP BY user_id
) AS x
ON Users.id = x.user_id
ORDER BY travelled_distance DESC, name ASC;

