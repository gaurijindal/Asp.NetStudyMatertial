CREATE Database K20AR;
USE K20AR;

CREATE TABLE Employees (
    SerialNo INT PRIMARY KEY,
    SerialName NVARCHAR(50),
    City NVARCHAR(50),
    Department NVARCHAR(50)
);

INSERT INTO Employees (SerialNo, SerialName, City, Department)
VALUES (1, 'John', 'Doe', 'IT'),
       (2, 'Jane', 'Smith', 'HR'),
       (3, 'Michael', 'Johnson', 'Finance'),
       (4, 'Emily', 'Brown', 'Marketing');

SELECT * FROM Employees;
GO
CREATE View MyView AS
SELECT SerialNo,SerialName
FROM Employees;
GO
SELECT * FROM MyView;
