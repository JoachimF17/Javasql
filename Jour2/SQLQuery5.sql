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