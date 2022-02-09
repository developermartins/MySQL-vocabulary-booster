SELECT products.ProductName AS Produto, MIN(orders.Quantity) AS Mínima,
MAX(orders.Quantity) AS Máxima, ROUND(AVG(orders.Quantity), 2) AS Média
FROM w3schools.products AS products
INNER JOIN w3schools.order_details AS orders
ON products.ProductID = orders.ProductID
GROUP BY products.ProductName
HAVING ROUND(AVG(orders.Quantity), 2) > 20.00
ORDER BY Média ASC, Produto;
