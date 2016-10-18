CREATE TABLE Students(
StudentID INT PRIMARY KEY,
[Name] VARCHAR(50)
)

CREATE TABLE Exams(
ExamID INT PRIMARY KEY,
[Name] VARCHAR(50)
)

INSERT INTO Students(StudentID, [Name])
VALUES  (1, 'Mila'),
		(2, 'Toni'),
		(3, 'Ron')

INSERT INTO Exams(ExamID, [Name])
VALUES (101, 'Spring MVC'),
	   (102, 'Neo4j'),
	   (103, 'Oracle11g')

CREATE TABLE StudentsExams(
StudentID INT,
ExamID INT
CONSTRAINT PK_StudentsExams PRIMARY KEY(StudentID, ExamID)
CONSTRAINT FK_StudentsExams_Students FOREIGN KEY(StudentID)
REFERENCES Students(StudentID),
CONSTRAINT FK_StudentsExams_Exams FOREIGN KEY(ExamID)
REFERENCES Exams(ExamID)
)