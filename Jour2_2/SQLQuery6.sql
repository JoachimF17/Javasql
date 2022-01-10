INSERT INTO Customers(CustomerID, CompanyName)
VALUES('MAISD', 'Maison Dewey');

UPDATE Customers
SET City = 'Bruxelles'
WHERE CustomerID = 'MAISD';
UPDATE Customers
SET City = 'Charleroi'
WHERE CustomerID = 'SUPRD';