--creer fonction qui calcule le semestre d'une date
SELECT E.BirthDate, dbo.Fn_GetSemester(E.BirthDate) AS Semester
FROM Employees E