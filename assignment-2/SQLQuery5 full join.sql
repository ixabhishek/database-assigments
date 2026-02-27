select * from Customers;
select * from Orders;


select * from customers c
full join orders o
on c.customer_id=o.customer_id;

select * from Employees e
full join Department d
on e.dep_id=d.dep_id;

select * from Customers c
left join Orders o
on c.customer_id=o.customer_id

union

select * from Customers c
right join Orders o
on c.customer_id=o.customer_id

