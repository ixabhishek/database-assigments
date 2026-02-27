Select * from Customers;
Select * From Orders;

select * from orders o
right join Customers c
on o.customer_id=c.customer_id;

select * from orders as o
right join Customers as c
on o.customer_id=c.customer_id
where c.customer_id is null;

select * from Employees e
right join Department d
on e.dep_id=d.dep_id;

select * from Employees e
right join Department d
on e.dep_id=d.dep_id
where salary>45000;

select d.dep_id,count(e.emp_id) from Employees as e
right join Department as d on
e.dep_id=d.dep_id
group by d.dep_id;

