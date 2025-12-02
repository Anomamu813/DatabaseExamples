SELECT Products.Name AS 'Product', Suppliers.Name AS 'Supplier'
FROM Products, Suppliers
WHERE Products.SupplierID = Suppliers.SupplierID
AND Products.Producer = 'Yumtreats'
AND Products.Mass >= 50
ORDER BY Products.Name DESC
