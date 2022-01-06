--liste des produits nom du produit, valeur de l'inventaire
SELECT ProductName,
	UnitPrice*UnitsInStock AS InventoryValue,
	Products.CategoryID%2 AS IsOdd,
	Products.CategoryID,
	--ajouter le nom de la categorie
	CategoryName,
	Description,
	--le nom du fournisseur du produit
	CompanyName
FROM Products
JOIN Categories
ON Products.CategoryID = Categories.CategoryID
JOIN Suppliers
ON Products.SupplierID = Suppliers.SupplierID;