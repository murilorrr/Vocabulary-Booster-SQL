SELECT
CONCAT(`FirstName`, ' ', `LastName`) AS 'Nome completo',
COUNT(OrderId) AS 'Total de pedidos'
FROM w3schools.orders AS o
LEFT JOIN w3schools.employees AS e
ON o.EmployeeID = e.EmployeeID
GROUP BY `Nome completo`
ORDER BY `Total de pedidos`;
