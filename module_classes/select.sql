CREATE TABLE students (
    student_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    age INT,
    grade CHAR(2),
    course VARCHAR(50),
    email VARCHAR(100),
    dob DATE,
    blood_group VARCHAR(5),
    country VARCHAR(50)
);


INSERT INTO students (first_name, last_name, age, grade, course, email, dob, blood_group, country) VALUES
('John', 'Doe', 20, 'A', 'Computer Science', 'john.doe@example.com', '2005-03-14', 'O+', 'USA'),
('Jane', 'Smith', 19, 'B', 'Mathematics', 'jane.smith@example.com', '2006-07-22', 'A+', 'Canada'),
('Michael', 'Brown', 21, 'A', 'Physics', 'michael.brown@example.com', '2004-01-30', 'B+', 'UK'),
('Emily', 'Davis', 20, 'C', 'Chemistry', 'emily.davis@example.com', '2005-05-12', 'AB-', 'Australia'),
('David', 'Wilson', 22, 'B', 'Biology', 'david.wilson@example.com', '2003-09-18', 'O-', 'USA'),
('Olivia', 'Miller', 18, 'A', 'English Literature', 'olivia.miller@example.com', '2007-11-03', 'A-', 'Canada'),
('Daniel', 'Garcia', 23, 'B', 'History', 'daniel.garcia@example.com', '2002-12-25', 'B-', 'Mexico'),
('Sophia', 'Martinez', 19, 'C', 'Political Science', 'sophia.martinez@example.com', '2006-08-16', 'O+', 'Spain'),
('James', 'Rodriguez', 20, 'A', 'Engineering', 'james.rodriguez@example.com', '2005-04-27', 'A+', 'Colombia'),
('Isabella', 'Hernandez', 21, 'B', 'Architecture', 'isabella.hernandez@example.com', '2004-06-09', 'AB+', 'Argentina'),
('William', 'Lopez', 22, 'C', 'Psychology', 'william.lopez@example.com', '2003-10-14', 'B+', 'USA'),
('Mia', 'Gonzalez', 18, 'A', 'Philosophy', 'mia.gonzalez@example.com', '2007-02-05', 'O-', 'Chile'),
('Alexander', 'Clark', 19, 'B', 'Sociology', 'alex.clark@example.com', '2006-03-29', 'AB+', 'UK'),
('Charlotte', 'Lewis', 20, 'A', 'Economics', 'charlotte.lewis@example.com', '2005-01-19', 'A-', 'Ireland'),
('Benjamin', 'Lee', 21, 'B', 'Business Administration', 'benjamin.lee@example.com', '2004-07-07', 'B+', 'South Korea');

SELECT email as "Student Email", age FROM students

SELECT * FROM students ORDER BY age DESC;

SELECT DISTINCT country FROM students;

SELECT DISTINCT blood_group FROM students;

SELECT * FROM students
    WHERE grade = 'A' AND course = 'Physics';

SELECT * FROM students
    WHERE blood_group = 'A+';

SELECT * FROM students
    WHERE country = 'USA' OR country = 'UK';

SELECT * FROM students
    WHERE (country = 'USA' OR country = 'UK') AND age >= 21;

SELECT concat (first_name, ' ' ,last_name) FROM students;

SELECT length(first_name) FROM students;

SELECT avg(age) FROM students;

SELECT count(*) FROM students;

SELECT upper(first_name) AS fName_in_upper, * FROM students;

SELECT sum(age) FROM students;

SELECT max(length(first_name)) FROM students;

SELECT * FROM students
    WHERE country <> 'USA';

SELECT * FROM students
    WHERE NOT country = 'UK';

SELECT * FROM students
    WHERE  email IS NOT NULL

UPDATE students SET email = NULL
    WHERE student_id = 10;

SELECT COALESCE(email, 'Email not provided') as "Email", blood_group, first_name, last_name FROM students;

SELECT * FROM students WHERE country IN('USA', 'UK', 'Canada');
SELECT * FROM students WHERE country NOT IN('USA', 'UK', 'Canada');

SELECT * FROM students 
    WHERE age BETWEEN 19 and 21;
SELECT * FROM students 
    WHERE dob BETWEEN '2003-01-01' and '2005-01-01' ORDER BY dob;

SELECT * FROM students
    WHERE first_name LIKE '%am';

SELECT * FROM students
    WHERE first_name LIKE '__a%';

SELECT * FROM students LIMIT 5;

SELECT * FROM students LIMIT 5 OFFSET 5 * 0;
SELECT * FROM students LIMIT 5 OFFSET 5 * 1;
SELECT * FROM students LIMIT 5 OFFSET 5 * 2;

DELETE FROM students 
    WHERE grade = 'B';

UPDATE students
    SET email = 'default@gmail.com', age = 25
    WHERE student_id = 3;