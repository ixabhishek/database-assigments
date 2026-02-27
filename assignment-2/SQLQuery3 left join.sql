Select * from Customers;
Select * From Orders;


select * from Customers c 
left join orders o
on c.customer_id=o.customer_id

select * from Customers c
left join orders o
on c.customer_id=o.customer_id
where o.order_id is null;

select * from Department;
select * from Employees;

select * from employees e
left join Department d
on e.dep_id=d.dep_id

select * from employees e
left join Department d
on e.dep_id=d.dep_id
where e.emp_id is null;

select * from Order_Items;
select * from Products;

select * from Products p
left join Order_Items ot
on p.product_id=ot.product_id
where ot.order_id is null;
