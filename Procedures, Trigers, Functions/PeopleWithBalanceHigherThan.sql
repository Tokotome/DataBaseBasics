--Your task is to create a stored procedure usp_GetHoldersWithBalanceHigherThan that accepts a number as a parameter and returns all 
--people who have more money in total of all their accounts than the supplied number. 

CREATE PROCEDURE usp_GetHoldersWithBalanceHigherThan (@number MONEY) 
AS
BEGIN
	DECLARE @desiredSumOfMoney MONEY
	SET @desiredSumOfMoney = @number
	SELECT ah.FirstName, ah.LastName FROM dbo.AccountHolders AS ah
	INNER JOIN dbo.Accounts AS a
	ON ah.Id = a.AccountHolderId
	GROUP BY ah.FirstName, ah.LastName
	HAVING SUM(a.Balance) > @desiredSumOfMoney
END