--Write a stored procedure usp_GetTownsStartingWith that accept string as parameter and returns all 
--town names starting with that string. Submit your query statement as Run skeleton, run queries & check DB in Judge.

CREATE PROCEDURE usp_GetTownsStartingWith  (@StartingString VARCHAR(50)) AS
BEGIN
	DECLARE @desiredBeginning AS VARCHAR(50)
	SET @desiredBeginning = @StartingString
SELECT t.Name FROM [dbo].[Towns] AS t
WHERE LOWER(LEFT(t.Name, LEN(@desiredBeginning))) = LOWER(@desiredBeginning)
END