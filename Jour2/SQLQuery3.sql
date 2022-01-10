--liste des employes
--nom et prenom de l'employe
--nom du chef de service
SELECT CONCAT(Emp.LastName, ' ', Emp.FirstName) AS EmployeeName,
		CONCAT(Boss.LastName, ' ', Boss.FirstName) AS BossName --*
FROM Employees AS Emp
LEFT OUTER JOIN Employees AS Boss
ON Boss.EmployeeID = Emp.ReportsTo;