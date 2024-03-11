create database schools;
use schools;
CREATE TABLE Teachers (
    teacher_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    date_of_birth DATE,
    gender VARCHAR(10),
    subject_taught VARCHAR(50)
);
CREATE TABLE Classes (
    class_id INT PRIMARY KEY,
    class_name VARCHAR(50),
    class_teacher_id INT,
    FOREIGN KEY (class_teacher_id) REFERENCES Teachers(teacher_id)
);
CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    date_of_birth DATE,
    gender VARCHAR(10),
    class_id INT,
    FOREIGN KEY (class_id) REFERENCES Classes(class_id)
);
CREATE TABLE Subjects (
    subject_id INT PRIMARY KEY,
    subject_name VARCHAR(50)
);
CREATE TABLE Exams (
    exam_id INT PRIMARY KEY,
    exam_name VARCHAR(100),
    class_id INT,
    exam_date DATE,
    FOREIGN KEY (class_id) REFERENCES Classes(class_id)
);
INSERT INTO Grades (grade_id, student_id, exam_id, grade)
VALUES
    (1, 1, 1, 85.5),
    (2, 2, 1, 90.0),
    (3, 3, 1, 78.3),
    (4, 4, 1, 92.7),
    (5, 5, 1, 87.9),
    (6, 6, 1, 80.2),
    (7, 7, 1, 88.6),
    (8, 8, 1, 95.1),
    (9, 9, 1, 84.4),
    (10, 10, 1, 89.8);
    INSERT INTO Teachers (teacher_id, first_name, last_name, date_of_birth, gender, subject_taught)
VALUES
    (1, 'Alice', 'Johnson', '1980-03-10', 'Female', 'Mathematics'),
    (2, 'Bob', 'Williams', '1978-07-15', 'Male', 'Science'),
    (3, 'Mary', 'Brown', '1979-11-20', 'Female', 'English'),
    (4, 'James', 'Miller', '1982-03-25', 'Male', 'History'),
    (5, 'Linda', 'Davis', '1981-09-30', 'Female', 'Geography'),
    (6, 'William', 'Wilson', '1983-01-05', 'Male', 'Art'),
    (7, 'Patricia', 'Taylor', '1980-08-12', 'Female', 'Physical Education'),
    (8, 'Richard', 'Thomas', '1984-06-18', 'Male', 'Computer Science'),
    (9, 'Barbara', 'Anderson', '1978-02-23', 'Female', 'Music'),
    (10, 'Joseph', 'Jackson', '1985-04-28', 'Male', 'Foreign Language');
INSERT INTO Classes (class_id, class_name, class_teacher_id)
VALUES
    (1, 'Grade 1', 1),
    (2, 'Grade 2', 2),
    (3, 'Grade 3', 3),
    (4, 'Grade 4', 4),
    (5, 'Grade 5', 5),
    (6, 'Grade 6', 6),
    (7, 'Grade 7', 7),
    (8, 'Grade 8', 8),
    (9, 'Grade 9', 9),
    (10, 'Grade 10', 10);

INSERT INTO Students (student_id, first_name, last_name, date_of_birth, gender, class_id)
VALUES
    (1, 'John', 'Doe', '2005-05-10', 'Male', 1),
    (2, 'Jane', 'Smith', '2006-07-15', 'Female', 2),
    (3, 'Michael', 'Johnson', '2004-11-20', 'Male', 3),
    (4, 'Emily', 'Brown', '2007-03-25', 'Female', 1),
    (5, 'David', 'Wilson', '2005-09-30', 'Male', 2),
    (6, 'Sarah', 'Anderson', '2006-01-05', 'Female', 3),
    (7, 'Robert', 'Martinez', '2004-08-12', 'Male', 1),
    (8, 'Emma', 'Taylor', '2007-06-18', 'Female', 2),
    (9, 'Christopher', 'Lee', '2005-02-23', 'Male', 3),
    (10, 'Olivia', 'Garcia', '2006-04-28', 'Female', 1);
INSERT INTO Subjects (subject_id, subject_name)
VALUES
    (1, 'Mathematics'),
    (2, 'Science'),
    (3, 'English'),
    (4, 'History'),
    (5, 'Geography'),
    (6, 'Art'),
    (7, 'Physical Education'),
    (8, 'Computer Science'),
    (9, 'Music'),
    (10, 'Foreign Language');

INSERT INTO Exams (exam_id, exam_name, class_id, exam_date)
VALUES
    (1, 'Midterm Exam', 1, '2024-05-15'),
    (2, 'Final Exam', 2, '2024-12-20'),
    (3, 'Quiz 1', 3, '2024-09-10'),
    (4, 'Quiz 2', 4, '2024-11-05'),
    (5, 'Term Paper', 5, '2024-10-25'),
    (6, 'Practical Exam', 6, '2024-04-30'),
    (7, 'Final Project', 7, '2024-06-15'),
    (8, 'Oral Presentation', 8, '2024-08-20'),
    (9, 'Lab Test', 9, '2024-03-25'),
    (10, 'Field Trip Report', 10, '2024-07-05');
INSERT INTO Grades (grade_id, student_id, exam_id, grade)
VALUES
    (1, 1, 1, 85.5),
    (2, 2, 1, 90.0),
    (3, 3, 1, 78.3),
    (4, 4, 1, 92.7),
    (5, 5, 1, 87.9),
    (6, 6, 1, 80.2),
    (7, 7, 1, 88.6),
    (8, 8, 1, 95.1),
    (9, 9, 1, 84.4),
    (10, 10, 1, 89.8);







