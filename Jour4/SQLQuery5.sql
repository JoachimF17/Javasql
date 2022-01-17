--liste des employes
--contient : id employe, nom prenom, date de naissance, age, adresse, CP, ville, pays
SELECT E.EmployeeID, CONCAT(E.LastName, ' ', E.FirstName) AS Nom, E.BirthDate, DATEDIFF(HOUR, E.BirthDate, CURRENT_TIMESTAMP)/8766 AS Age,
		E.Address, E.PostalCode, E.City, C.Name
FROM Employees E
JOIN Country C
ON E.CountryID = C.CountryID