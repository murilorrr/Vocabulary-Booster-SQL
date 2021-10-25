SELECT
ProductName AS 'Produto', 
MIN(Quantity) AS 'Mínima',
MAX(Quantity) AS 'Máxima',
CAST(AVG(Quantity) AS DECIMAL(9, 2)) AS 'Média'
FROM w3schools.order_details AS od
LEFT JOIN w3schools.products AS p
ON od.ProductID = p.ProductID
GROUP BY ProductName
ORDER BY `Média`, ProductName;
