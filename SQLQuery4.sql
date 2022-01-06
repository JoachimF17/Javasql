--liste des produits nom du produit, valeur de l'inventaire
SELECT ProductName,
	UnitPrice*UnitsInStock AS InventoryValue,
	CategoryID%2 AS IsOdd,
	CategoryID,
	--ajouter le nom de la categorie
	(SELECT CategoryName
	FROM Categories
	WHERE Products.CategoryID = Categories.CategoryID)
	AS NomCategorie,
	(SELECT Description
	FROM Categories
	WHERE Products.CategoryID = Categories.CategoryID)
	AS CategoryDescription
FROM Products;