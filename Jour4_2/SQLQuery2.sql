-- ================================================
-- Template generated from Template Explorer using:
-- Create Scalar Function (New Menu).SQL
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
-- Description:	Calcul l'age en annees d'une entite
-- =============================================
CREATE FUNCTION Fn_GetAge 
(
	-- Add the parameters for the function here
	@pBirthDate Datetime
)
RETURNS int
AS
BEGIN
	-- Declare the return variable here
	DECLARE @Result int

	-- Add the T-SQL statements to compute the return value here
	SELECT @Result = CASE
						WHEN DATEPART(MONTH, CURRENT_TIMESTAMP) > DATEPART(MONTH, @pBirthDate)
						OR (DATEPART(MONTH, CURRENT_TIMESTAMP) = DATEPART(MONTH, @pBirthDate)
						AND DATEPART(DAY, CURRENT_TIMESTAMP) >= DATEPART(DAY, @pBirthDate)) 
						THEN DATEDIFF(YEAR, @pBirthDate, CURRENT_TIMESTAMP)
						ELSE DATEDIFF(YEAR, @pBirthDate, CURRENT_TIMESTAMP) - 1
					END

	-- Return the result of the function
	RETURN @Result

END
GO

