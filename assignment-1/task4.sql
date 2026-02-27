SELECT * FROM students WHERE age > 21;

SELECT * FROM students WHERE active_flag = 1;

SELECT * FROM courses WHERE fees BETWEEN 1000 AND 5000;

SELECT * FROM students WHERE age IN (20, 22, 25);



SELECT * FROM students WHERE age > 20 AND active_flag = 1;

SELECT * FROM students WHERE age < 20 OR active_flag = 0;

SELECT * FROM courses 
WHERE fees > 2000 AND course_name LIKE '%Data%';



SELECT * FROM students WHERE email LIKE '%gmail.com';

SELECT * FROM courses WHERE course_name LIKE 'Data%';


INSERT INTO students (student_id, name, email, age, registration_date)
VALUES (1011, 'Dummy', 'dummy@gmail.com', NULL, '2024-02-01');

SELECT * FROM students WHERE age IS NULL;

SELECT * FROM students WHERE age IS NOT NULL;