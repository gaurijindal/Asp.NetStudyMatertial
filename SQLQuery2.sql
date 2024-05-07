CREATE TABLE Authors (
    AuthorID INT PRIMARY KEY,
    AuthorName NVARCHAR(100)
);

INSERT INTO Authors (AuthorID, AuthorName)
VALUES 
    (1, 'J.K. Rowling'),
    (2, 'George Orwell'),
    (3, 'Harper Lee');

CREATE TABLE Books (
    ISBN VARCHAR(13) PRIMARY KEY,
    Title NVARCHAR(100),
    AuthorID INT,
    Available BIT DEFAULT 1,
    Price DECIMAL(10, 2),
    CONSTRAINT FK_Author FOREIGN KEY (AuthorID) REFERENCES Authors(AuthorID),
    CONSTRAINT CHK_Price CHECK (Price >= 0),
);

INSERT INTO Books (ISBN, Title, AuthorID, Available, Price)
VALUES 
    ('9780545010221', 'Harry Potter and the Sorcerer''s Stone', 1, 1, 20.99),
    ('9780451524935', '1984', 2, 1, 15.50),
    ('9780061120084', 'To Kill a Mockingbird', 3, 1, 18.75);

CREATE TABLE Borrowers (
    LibraryCardNumber INT PRIMARY KEY NOT NULL,
    BorrowerName NVARCHAR(100),
    Email NVARCHAR(100) UNIQUE,
);

INSERT INTO Borrowers (LibraryCardNumber, BorrowerName, Email)
VALUES 
    (1001, 'John Smith', 'john@example.com'),
    (1002, 'Emily Johnson', 'emily@example.com'),
    (1003, 'Michael Brown', 'michael@example.com');

SELECT * FROM Authors;
SELECT * FROM Books;
SELECT * FROM Borrowers;
