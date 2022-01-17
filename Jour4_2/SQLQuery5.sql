--fonction qui a besoin d'une annee et qui fournit le chiffre d'affaire par mois
SELECT DATEPART(MONTH, O.OrderDate) AS Mois, 
		ROUND(SUM(OD.Quantity * OD.UnitPrice * (1- OD.Discount)),2) AS 'Chiffre d affaire'
FROM Orders O
INNER JOIN [Order Details] OD
	ON OD.OrderID = O.OrderID
INNER JOIN Products AS P
	ON P.ProductID = OD.ProductID
WHERE DATEPART(YEAR, O.OrderDate) = 1997
GROUP BY DATEPART(YEAR, O.OrderDate), DATEPART(MONTH, O.OrderDate)