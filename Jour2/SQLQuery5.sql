--Except
--la liste des clients qui n'ont jamais passé commande
--le customerid, le nom du client
SELECT C.CustomerID, C.CompanyName
FROM Customers C
EXCEPT 
SELECT O.CustomerID, CO.CompanyName
FROM orders O 
JOIN Customers CO
	ON O.CustomerID = CO.CustomerID;

--pour afficher toutes les infos des clients
SELECT *
FROM Customers
WHERE CustomerID NOT IN ( SELECT O.CustomerID FROM Orders O);

--left outer join
SELECT *
FROM Customers C
LEFT OUTER JOIN Orders O
ON O.CustomerID = C.CustomerID
WHERE OrderID IS NULL;