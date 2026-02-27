SELECT *
FROM students
WHERE age > 20
ORDER BY age;

SELECT COUNT(*) AS students_with_a
FROM students
WHERE name LIKE '%a%';

SELECT *
FROM courses
WHERE fees BETWEEN 2000 AND 5000
ORDER BY fees;

SELECT *
FROM students
WHERE active_flag = 0
AND age IS not null;


SELECT student_id, COUNT(*) AS total_enrollments
FROM enrollments
GROUP BY student_id
HAVING COUNT(*) > 1;
