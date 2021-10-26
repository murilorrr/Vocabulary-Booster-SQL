SELECT
c1.CustomerName AS 'Nome',
c2.Country AS 'País',
COUNT(c1.Country) - 1
FROM
  w3schools.customers AS c1,
  w3schools.customers AS c2
WHERE c1.Country = c2.Country
GROUP BY c1.CustomerID
ORDER BY Nome;
