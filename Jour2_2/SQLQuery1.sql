--la liste des pays utilises dans les tables
--customers, suppliers, employees, orders
SELECT DISTINCT ShipCountry
FROM Orders
UNION
SELECT DISTINCT Country
FROM Customers
UNION
SELECT DISTINCT Country
FROM Suppliers
UNION
SELECT DISTINCT Country
FROM Employees;