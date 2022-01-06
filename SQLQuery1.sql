SELECT * 
FROM Products
WHERE UnitsInStock <= 15 AND (CategoryID = 2 OR CategoryID = 4)
OR UnitsInStock > 30 AND CategoryID = 3
ORDER BY UnitPrice DESC;