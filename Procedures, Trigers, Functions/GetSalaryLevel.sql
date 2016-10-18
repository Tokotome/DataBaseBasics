--Write a function ufn_GetSalaryLevel(@salary MONEY) that receives salary of an employee and returns the level of the salary.
--If salary is < 30000 return “Low”
--If salary is between 30000 and 50000 (inclusive) return “Average”
--If salary is > 50000 return “High”

CREATE FUNCTION ufn_GetSalaryLevel (@salary MONEY) 
RETURNS VARCHAR(50) AS
BEGIN
	DECLARE @employeeSalary AS MONEY
	SET @employeeSalary = @salary
	DECLARE @salaryLevel VARCHAR(50)

	IF (@salary < 30000)
	BEGIN
		SET @salaryLevel = 'Low'
	END

	IF (@salary >= 30000 AND @salary <= 50000)
	BEGIN
		SET @salaryLevel = 'Average'
	END

	IF (@salary > 50000)
	BEGIN
		SET @salaryLevel = 'High'
	END
RETURN @salaryLevel
END

