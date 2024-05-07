
CREATE TABLE StudentDetails (
    Sno INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Address VARCHAR(100)
);

INSERT INTO StudentDetails (Sno, FirstName, LastName, Address)
VALUES 
    (1, 'John', 'Doe', '123 Main Street, Cityville, State, ZIP Code'),
    (2, 'Jane', 'Smith', '456 Elm Street, Townsville, State, ZIP Code'),
    (3, 'Michael', 'Johnson', '789 Oak Avenue, Villageton, State, ZIP Code'),
    (4, 'Emily', 'Brown', '101 Pine Road, Hamletown, State, ZIP Code'),
    (5, 'David', 'Wilson', '202 Maple Lane, Countryside, State, ZIP Code');

CREATE TABLE StudentMarks (
    SId INT PRIMARY KEY,
    Name VARCHAR(50),
    Marks INT,
    Age INT
);

INSERT INTO StudentMarks (SId, Name, Marks, Age)
VALUES 
    (1, 'John Doe', 85, 20),
    (2, 'Jane Smith', 90, 21),
    (3, 'Michael Johnson', 75, 22),
    (4, 'Emily Brown', 88, 19),
    (5, 'David Wilson', 92, 20);
GO

CREATE VIEW MarksView AS
SELECT StudentDetails.FirstName, StudentDetails.Address, StudentMarks.Marks
FROM StudentDetails, StudentMarks
WHERE StudentDetails.FirstName = StudentMarks.Name;
GO
SELECT * FROM MarksView;


