SELECT name
FROM customer
WHERE referee_id != '2' OR referee_id IS NULL;

# WHERE IFNULL(referee_id, 0) != 2;