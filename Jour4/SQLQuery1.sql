--la liste des commandes avec plus de 5 jours de retard
--contient : num de commande, la date de la commande, la date de livraison, le nom du client, le num de telephone du client, le nom de l'employe qui a encode
--afficher annee et semestre
SELECT O.OrderID, O.OrderDate, O.RequiredDate, O.ShippedDate, DATEDIFF(DAY, O.RequiredDate, O.ShippedDate) AS Retard, 
C.CompanyName AS CustomerName, C.Phone AS CustomerPhone, CONCAT(E.LastName, ' ', E.FirstName) AS EmployeeName, DATEPART(YEAR, O.OrderDate) AS Year,
CASE
WHEN DATEPART(QUARTER, O.OrderDate) = 1 THEN 1
WHEN DATEPART(QUARTER, O.OrderDate) = 2 THEN 1
WHEN DATEPART(QUARTER, O.OrderDate) = 3 THEN 2
ELSE 2
END AS Semester
FROM Orders O
JOIN Customers C
ON O.CustomerID = C.CustomerID
JOIN Employees E
ON O.EmployeeID = E.EmployeeID
WHERE DATEDIFF(DAY, O.RequiredDate, O.ShippedDate) > 5;