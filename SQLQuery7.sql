--liste des employes
--nom et prenom de l'employe
--nom du chef de service
SELECT (Emp.LastName + ' ' + Emp.FirstName) AS EmployeeName,
		(Boss.LastName + ' ' + Boss.FirstName) AS BossName
FROM Employees AS Emp
JOIN Employees AS Boss
ON Boss.EmployeeID = Emp.ReportsTo;