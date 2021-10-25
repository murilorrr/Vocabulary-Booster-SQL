SELECT
ContactName AS 'Nome completo',
COUNT(OrderDate) AS 'Total de pedidos'
FROM w3schools.orders AS c
LEFT JOIN w3schools.customers AS o
ON c.CustomerID = o.CustomerID
GROUP BY ContactName
ORDER BY `Total de pedidos`;
