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
-- Description:	Retourne chiffre d'affaire par mois de l'annee entree en params
-- =============================================
CREATE FUNCTION Fn_MonthlyReport 
(	
	-- Add the parameters for the function here
	@pAnnee int
)
RETURNS TABLE 
AS
RETURN 
(
	-- Add the SELECT statement with parameter references here
	SELECT DATEPART(MONTH, O.OrderDate) AS Mois, 
		ROUND(SUM(OD.Quantity * OD.UnitPrice * (1- OD.Discount)),2) AS 'Chiffre d affaire'
	FROM Orders O
	INNER JOIN [Order Details] OD
		ON OD.OrderID = O.OrderID
	INNER JOIN Products AS P
		ON P.ProductID = OD.ProductID
	WHERE DATEPART(YEAR, O.OrderDate) = @pAnnee
	GROUP BY DATEPART(YEAR, O.OrderDate), DATEPART(MONTH, O.OrderDate)
)
GO
