--UNION, INTERSECT, EXCEPT
--la liste des clients triee sur le code postal
--nom du client, adresse, code postal, ville, pays
SELECT C.CompanyName AS Name, C.Address, C.PostalCode, C.City, C.Country, 'C' AS Type
FROM Customers C
--ORDER BY C.PostalCode
UNION
SELECT S.CompanyName, S.Address, S.PostalCode, S.City, S.Country, 'S'
FROM Suppliers S
UNION
SELECT CONCAT(E.FirstName, ' ', E.LastName), E.Address, E.PostalCode, E.City, E.Country, 'E'
FROM Employees E
ORDER BY Country
;