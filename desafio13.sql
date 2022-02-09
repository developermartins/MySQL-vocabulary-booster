SELECT Produtos.ProductName AS Produto, Produtos.Price AS Preço
FROM w3schools.products AS Produtos
WHERE (
SELECT MAX(Pedidos.Quantity)
FROM w3schools.order_details AS Pedidos
WHERE Produtos.ProductID = Pedidos.ProductID
) > 80
ORDER BY Produto;
