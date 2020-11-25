SELECT Name as Customers
FROM Customers
WHERE Id not in(
    SELECT distinct CustomerId from Orders
)