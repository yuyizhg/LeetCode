SELECT employee_id, team_size
FROM Employee
LEFT JOIN (
    SELECT team_id, COUNT(DISTINCT employee_id) as team_size
    FROM Employee
    GROUP BY team_id
) AS teams
ON Employee.team_id = teams.team_id;