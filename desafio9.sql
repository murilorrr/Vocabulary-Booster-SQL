SELECT
CONCAT(`FirstName`, ' ', `LastName`) AS 'Nome completo',
COUNT(*) AS 'Total de pedidos'
FROM w3schools.employees AS o
LEFT JOIN w3schools.orders AS e
ON o.EmployeeID = e.EmployeeID
GROUP BY FirstName
ORDER BY `Total de pedidos`;
