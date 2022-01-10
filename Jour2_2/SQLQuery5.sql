UPDATE Products
SET UnitPrice = UnitPrice * 1.1
WHERE CategoryID = 8;
--mettre en majuscules la ville de Customers belges
UPDATE Customers
SET City = UPPER(City)
WHERE Country = 'Belgium';
SELECT *
FROM Customers
WHERE Country = 'Belgium';