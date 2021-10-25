SELECT
ContactName AS 'Nome de contato',
ShipperName AS 'Empresa que fez o envio',
OrderDate AS 'Data do pedido'
FROM w3schools.customers AS c
RIGHT JOIN w3schools.orders AS o
ON c.CustomerID = o.CustomerID
LEFT JOIN w3schools.shippers AS s
ON s.ShipperID = o.ShipperID
WHERE ShipperName NOT IN('Federal Shipping')
ORDER BY `Nome de contato`, ShipperName, OrderDate;
