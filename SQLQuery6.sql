--la liste des commandes du deuxieme trimestre de 1997
--numero de commande, date de commande
--nom du client
--nom de l'employe qui a encode
--nom du livreur de la commande
SELECT O.OrderID,
	O.OrderDate,
	C.CompanyName AS CustomerName,
	E.LastName + ' ' + E.FirstName AS EmployeeName,
	S.CompanyName
FROM Orders AS O
JOIN Customers AS C
ON O.CustomerID = C.CustomerID
JOIN Employees AS E
ON O.EmployeeID = E.EmployeeID
JOIN Shippers AS S
ON O.ShipVia = S.ShipperID
WHERE O.OrderDate BETWEEN '1997-04-01' AND '1997-06-30 23:59:59';