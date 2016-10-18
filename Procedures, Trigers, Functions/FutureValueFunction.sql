--Your task is to create a function ufn_CalculateFutureValue that accepts as parameters – sum, 
--yearly interest rate and number of years. It should calculate and return the future value of the initial sum. Using the following formula:
--FV=I×(〖(1+R)〗^T)
	--I – Initial sum
	--R – Yearly interest rate
	--T – Number of years

	CREATE FUNCTION ufn_CalculateFutureValue (@InitialSum DECIMAL(19, 8), @YearlyInterestRate DECIMAL(19, 8), @Years INT) RETURNS DECIMAL(19, 4) AS
BEGIN
	DECLARE @result DECIMAL(19, 4)
	SET @result = @InitialSum * (POWER ((1 + @YearlyInterestRate), @Years))	
	RETURN @result
END

--SELECT dbo.ufn_CalculateFutureValue(1000, 0.1, 5)