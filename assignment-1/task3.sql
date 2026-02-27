/*select */
SELECT * FROM students;

SELECT name, email FROM students;

SELECT * FROM students ORDER BY age DESC;

SELECT * FROM students ORDER BY registration_date;

SELECT DISTINCT age FROM students;

SELECT DISTINCT course_name FROM courses;


/*update*/
UPDATE students
SET age=24
where student_id=1001;

update students
set active_flag=0
where student_id in (1005,1008);

update courses
set fees = fees*1.10;

/*delete*/
DELETE FROM students WHERE student_id = 1010;

DELETE FROM courses WHERE fees < 1000;

DELETE FROM enrollments 
WHERE enroll_timestamp < '2023-03-01';

/*alter*/
ALTER TABLE students 
ALTER COLUMN name VARCHAR(100);

EXEC sp_rename 'students.join_date', 'registration_date', 'COLUMN';

ALTER TABLE students 
ADD phone_number VARCHAR(15);


