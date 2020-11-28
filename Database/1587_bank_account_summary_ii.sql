SELECT *

FROM(SELECT name, sum(amount) as balance
    FROM Users
    LEFT JOIN Transactions on Users.account = Transactions.account
    GROUP BY name) AS x

WHERE balance > 10000