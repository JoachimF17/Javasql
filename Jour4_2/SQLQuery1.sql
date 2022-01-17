--utiliser case

SELECT E.EmployeeID, CONCAT(E.LastName, ' ', E.FirstName) AS Nom, E.BirthDate, DATEDIFF(HOUR, E.BirthDate, CURRENT_TIMESTAMP)/8766 AS Age1,
dbo.Fn_GetAge(E.BirthDate) Age2
FROM Employees E