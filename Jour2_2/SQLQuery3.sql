--CTE (Common Table Expression)
WITH TableIntermediaire
AS
(
	SELECT DISTINCT ShipCountry AS Name
	FROM Orders
	UNION
	SELECT Country
	FROM Customers
	UNION
	SELECT Country
	FROM Suppliers
	UNION
	SELECT Country
	FROM Employees
)
SELECT IDENTITY(INT, 1, 1) AS CountryID, Name
INTO Countries
FROM TableIntermediaire;