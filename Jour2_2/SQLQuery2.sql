SELECT IDENTITY(INT, 1, 1) AS CountryID, Name
INTO Countries
FROM 
(SELECT DISTINCT ShipCountry AS Name
FROM Orders
UNION
SELECT Country
FROM Customers
UNION
SELECT Country
FROM Suppliers
UNION
SELECT Country
FROM Employees) AS TableIntermediaire
ORDER BY Name;
SELECT *
FROM Countries;
DROP TABLE Countries;