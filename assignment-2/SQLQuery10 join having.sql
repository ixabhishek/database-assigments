select * from Customers
select * from Orders

select c.customer_id,count(*) as order_count from orders o
join Customers c on
o.customer_id=c.customer_id group by c.customer_id having count(*)>3;

select * from Employees;
select * from Department;

select d.dep_id, d.dep_name,count(*) as employee_count from Employees e
join Department d
on
e.dep_id=d.dep_id group by d.dep_id,d.dep_name having count(*)>5;

select * from Products

select p.product_id,p.product_name,count(*) as emp_count from Order_Items ot 
join Products p
on
p.product_id=ot.product_id group by p.product_id,p.product_name having count(*)>1;

select c.customer_id,c.name,sum(o.total_amount) from Customers as c
join Orders as o on 
c.customer_id = o.customer_id
group by c.customer_id,c.name having sum(o.total_amount) > 2500
	