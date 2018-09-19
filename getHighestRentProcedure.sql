CREATE PROCEDURE GetHighestRent
AS
SELECT * 
FROM rentalProperty, Branch
WHERE rentalProperty.Rent = (SELECT MAX(Rent)FROM rentalProperty WHERE Branch.BranchId = rentalProperty.BranchId);

GO;

