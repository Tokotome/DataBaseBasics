CREATE TABLE People 
(
Id INT NOT NULL IDENTITY PRIMARY KEY,
[Name] VARCHAR(200) NOT NULL,
Picture VARBINARY(2),
Height FLOAT(2),
[Weight] FLOAT(2),
Gender CHARACTER(1) NOT NULL,
Birthdate DATE NOT NULL,
Biography VARCHAR(max)
)

INSERT INTO People([Name], Height, [Weight], Gender, Birthdate, Biography)
VALUES
('Pesho', 1.82, 86.40, 'm', '1984-12-13', 'ala-bala'),
('Gosho', 1.85, 86.41, 'm', '1984-12-13', 'ala-bala'),
('Ivan', 1.86, 86.60, 'm', '1984-12-13', 'ala-bala'),
('Kolyo', 1.87, 87.40, 'm', '1984-12-13', 'ala-bala'),
('Angel', 1.88, 81.40, 'm', '1984-12-13', 'ala-bala')