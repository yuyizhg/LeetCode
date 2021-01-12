SELECT c.country_name,
    CASE
    WHEN AVG(w.weather_state) <= 15 THEN 'Cold'
    WHEN AVG(w.weather_state) >= 25 THEN 'Hot'
    ELSE 'Warm'
    END
    AS weather_type
FROM Weather w
LEFT JOIN Countries c
ON w.country_id = c.country_id
WHERE LEFT(w.day, 7) = '2019-11'
GROUP BY w.country_id;