--You are given a database schema with tables AccountHolders(Id (PK), FirstName, LastName, SSN) and 
--Accounts(Id (PK), AccountHolderId (FK), Balance).  Write a stored procedure usp_GetHoldersFullName 
--that selects the full names of all people. 

CREATE PROCEDURE usp_GetHoldersFullName AS
BEGIN
	SELECT ah.FirstName + ' ' + ah.LastName FROM dbo.AccountHolders AS ah
END