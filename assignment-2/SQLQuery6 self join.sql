select * from Employees;

select e.*,b.emp_name from Employees e join Employees b on e.manager_id = b.emp_id;

select e.emp_id,e.emp_name from Employees e join Employees m on m.manager_id=e.emp_id

SELECT m.emp_id AS manager_id, m.emp_name AS manager_name FROM Employees AS e JOIN Employees AS m ON e.manager_id = m.emp_id;
