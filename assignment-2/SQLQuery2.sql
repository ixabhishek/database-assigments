select * from customers

select * from orders


select * from Customers as c
join Orders as o 
on c.customer_id = o.customer_id;


select o.order_id, c.name, c.email, o.total_amount from Customers as c
join Orders as o 
on c.customer_id=o.customer_id;

select * from Department
select * from Employees

select e.emp_id, e.emp_name, e.dep_id, d.dep_name from Employees as e
join Department as d
on e.dep_id=d.dep_id


select * from Customers
select * from Orders
select * from products
select * from Order_items


select * from orders as o
join Customers as c on
o.customer_id=c.customer_id
join Order_Items as ot on
o.order_id=o.customer_id 
join Products as p on
p.product_id=ot.product_id

select * from Orders as o
join Customers as c on 
o.customer_id = c.customer_id 
join Order_items as ot on 
ot.order_id = o.customer_id
join products as p on 
p.product_id = ot.product_id
where p.price >500;


select * from Orders as o
join Customers as c on 
o.customer_id = c.customer_id 
join Order_items as ot on 
ot.order_id = o.customer_id
join products as p on 
p.product_id = ot.product_id
where c.name like 'sa%'