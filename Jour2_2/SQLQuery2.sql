SELECT DISTINCT ShipCountry AS Name
INTO Countries
FROM Orders
UNION
SELECT Country
FROM Customers
UNION
SELECT Country
FROM Suppliers
UNION
SELECT Country
FROM Employees;
SELECT *
FROM Countries;