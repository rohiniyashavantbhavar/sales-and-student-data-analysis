-- Create Students table
CREATE TABLE students (
    student_id INT PRIMARY KEY,
    name VARCHAR(50),
    class VARCHAR(10),
    subject VARCHAR(30),
    marks INT,
    attendance INT
);

-- Sample queries
SELECT * FROM students;

SELECT name, marks
FROM students
WHERE marks > 70;

SELECT subject, AVG(marks) AS avg_marks
FROM students
GROUP BY subject;

SELECT name, SUM(marks) AS total_marks
FROM students
GROUP BY name
ORDER BY total_marks DESC
LIMIT 5;

SELECT name, attendance
FROM students
WHERE attendance < 75;