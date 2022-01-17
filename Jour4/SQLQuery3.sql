-- ================================================
-- Template generated from Template Explorer using:
-- Create Inline Function (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the function.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		JF
-- Create date: 2022-01-17
-- Description:	Liste des commandes livrees en retard (le param contient le nb minimum de jours de retard)
-- =============================================
CREATE FUNCTION Fn_ListeCommandesLivreesEnRetard 
(	
	-- Add the parameters for the function here
	@pNbJoursReatrd int
)
RETURNS TABLE 
AS
RETURN 
(
	-- Add the SELECT statement with parameter references here
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
	WHERE DATEDIFF(DAY, O.RequiredDate, O.ShippedDate) > @pNbJoursReatrd
)
GO
