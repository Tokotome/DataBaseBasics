CREATE TABLE Manufacturers(
ManufacturerID INT NOT NULL PRIMARY KEY,
[Name] VARCHAR(50),
EstablishedOn DATE
)	

CREATE TABLE Models(
ModelID INT NOT NULL PRIMARY KEY,
[Name] VARCHAR(50),
ManufacturerID INT NOT NULL FOREIGN KEY REFERENCES Manufacturers(ManufacturerID),
)

INSERT INTO Manufacturers(ManufacturerID, [Name], EstablishedOn)
VALUES (1,'BMW','1916-07-03'),
(2, 'Tesla','2003-01-01'),
(3, 'Lada', '1966-05-01')

INSERT INTO Models(ModelID, [Name], ManufacturerID)
VALUES(101,'X1', 1),
(102,'I6', 1), 
(103,'Model S', 2), 
(104,'Model X', 2), 
(105,'Model 3', 2), 
(106,'Nova', 3)