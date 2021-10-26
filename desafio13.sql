SELECT
ProductName AS 'Produto',
Price AS 'Preço'
FROM w3schools.products AS p
RIGHT JOIN w3schools.order_details AS o
ON o.ProductID = p.ProductID
WHERE Quantity > 80
ORDER BY Produto;
