SELECT customer_id, count(1) as count_no_trans
FROM Visits
WHERE visit_id not in (
    SELECT visit_id FROM Transactions
)
GROUP BY customer_id;