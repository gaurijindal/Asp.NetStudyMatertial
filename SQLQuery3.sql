CREATE TABLE student (
    s_id INT PRIMARY KEY,
    s_name VARCHAR(100),
    totalFees DECIMAL(10, 2)
);

INSERT INTO student (s_id, s_name, totalFees)
VALUES
    (1, 'John', 50000.00),
    (2, 'Alice', 60000.00),
    (3, 'Michael', 70000.00),
    (4, 'Emma', 55000.00),
    (5, 'James', 65000.00),
    (6, 'Sophia', 75000.00),
    (7, 'William', 80000.00);

SELECT * FROM student;

CREATE TABLE student_info (
    subjects VARCHAR(100),
    student_id INT,
    exam_date DATE
);

INSERT INTO student_info (subjects, student_id, exam_date)
VALUES
    ('Maths', 1, '2022-03-15'),
    ('Science', 2, '2022-03-16'),
    ('History', 3, '2022-03-17'),
    ('Geography', 4, '2022-03-18'),
    ('English', 5, '2022-03-19'),
    ('Physics', 6, '2022-03-20'),
    ('Chemistry', 7, '2022-03-21');

SELECT * FROM student_info;

SELECT * FROM student INNER JOIN student_info ON student.s_id = student_info.student_id;

SELECT * FROM student LEFT JOIN student_info ON student.s_id = student_info.student_id;

SELECT * FROM student RIGHT JOIN student_info ON student.s_id = student_info.student_id;

SELECT * FROM student FULL OUTER JOIN student_info ON student.s_id = student_info.student_id;

