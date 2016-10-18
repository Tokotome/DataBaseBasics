--Create stored procedure usp_GetEmployeesSalaryAboveNumber that accept a number 
--as parameter and return all employees’ first and last names whose salary is above or equal to the given number. 

CREATE PROCEDURE usp_GetEmployeesSalaryAboveNumber (@Salary MONEY) AS
BEGIN
	DECLARE @givenNumber AS MONEY
	SET @givenNumber = @Salary
SELECT e.FirstName, e.LastName FROM [dbo].[Employees] AS e
WHERE e.Salary >= @givenNumber
END