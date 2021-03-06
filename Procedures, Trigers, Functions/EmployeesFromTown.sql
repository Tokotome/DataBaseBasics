--Write a stored procedure usp_GetEmployeesFromTown that accepts town name as parameter 
--and return the employees� first and last name that live in the given town. Submit your 
--query statement as Run skeleton, run queries & check DB in Judge.

CREATE PROCEDURE usp_GetEmployeesFromTown  (@TownName VARCHAR(50)) 
AS
BEGIN
	DECLARE @employeeTown AS VARCHAR(50)
	SET @employeeTown = @TownName
SELECT e.FirstName, e.LastName FROM [dbo].[Employees] AS e
INNER JOIN Addresses as a
ON e.AddressID = a.AddressID
INNER JOIN Towns as t
ON a.TownID = t.TownID
WHERE t.Name = @employeeTown
END

