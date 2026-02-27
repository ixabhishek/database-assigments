SELECT COUNT(*) AS total_students
FROM students;

SELECT COUNT(*) AS total_students
FROM students
where active_flag=1;

select sum(fees) as fees_sum
from courses;

select avg(fees) as fees_avg
from courses;

select sum(fees) as sum_above_2000
from courses
where fees>2000;

SELECT MIN(age) AS minimum_age
FROM students;

SELECT Max(age) AS maximum_age
FROM students;


SELECT 
    MAX(registration_date) AS latest_join_date,
    MIN(registration_date) AS oldest_join_date
FROM students;

SELECT active_flag, COUNT(*) AS total_students
FROM students
GROUP BY active_flag;

SELECT age, COUNT(*) AS total_students
FROM students
GROUP BY age;

SELECT course_id, SUM(fees) AS total_fees
FROM courses
GROUP BY course_id;


SELECT course_id, COUNT(*) AS total_enrollments
FROM enrollments
GROUP BY course_id
HAVING COUNT(*) > 3;


SELECT active_flag, AVG(age) AS avg_age
FROM students
WHERE age IS NOT NULL
GROUP BY active_flag
HAVING AVG(age) > 21;


SELECT course_id, COUNT(*) AS total_enrollments
FROM enrollments
GROUP BY course_id
HAVING COUNT(*) > 2;

