SELECT customers.ContactName AS `Nome de contato`,
shippers.ShipperName  AS `Empresa que fez o envio`,
OrderDate AS `Data do pedido`
FROM w3schools.customers AS customers
INNER JOIN w3schools.orders AS orders
ON customers.CustomerID = orders.CustomerID
INNER JOIN(
SELECT * FROM w3schools.shippers
WHERE ShipperName = 'Speedy Express'
OR ShipperName = 'United Package'
) AS shippers
ON orders.ShipperID = shippers.ShipperID
ORDER BY `Nome de contato`, `Empresa que fez o envio`, `Data do pedido` ASC;
