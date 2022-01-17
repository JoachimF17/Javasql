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
-- Description:	Calcul du semestre d'une date, renvoir 1 pour premier semestre 2 pour second
-- =============================================
CREATE FUNCTION Fn_GetSemester 
(
	-- Add the parameters for the function here
	@pDate Datetime
)
RETURNS int
AS
BEGIN
	-- Declare the return variable here
	DECLARE @Result int

	-- Add the T-SQL statements to compute the return value here
	SELECT @Result = CASE
						WHEN DATEPART(MONTH, @pDate) <= 6
						THEN 1
						ELSE 2
					END

	-- Return the result of the function
	RETURN @Result

END
GO

