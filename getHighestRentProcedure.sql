CREATE PROCEDURE GetHighestRent
AS

SELECT rentalProperty.Rent, rentalProperty.Location, rentalProperty.Note 
FROM rentalProperty, Branch
WHERE rentalProperty.Rent = (SELECT MAX(Rent)FROM rentalProperty WHERE Branch.BranchId(PK) = rentalProperty.BranchId(FK)); 


GO;

