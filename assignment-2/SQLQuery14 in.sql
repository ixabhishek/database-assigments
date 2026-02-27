select * from Customers
where customer_id in (select customer_id from Orders);


select * from Customers
select * from orders

select * from Customers
where customer_id not in (select customer_id from Orders);


select * from Products where product_id not in (select product_id from Order_Items);

select * from Employees where dep_id not in (select dep_id from Department);

select * from Orders where total_amount > (select avg(total_amount) from orders);

select o.customer_id from Orders o join Customers c on c.customer_id=o.order_id where total_amount>(select avg(total_amount) from Orders);

select * from Department
select * from Employees

select dep_name from Department where dep_id in(select e.dep_id from Employees e join Department d on d.dep_id=e.dep_id group by e.dep_id having count(e.dep_id)>1);

Select o.order_id,o.customer_id,o.total_amount from Customers as c join Orders as o on c.customer_id = o.customer_id and total_amount = (select MAX(total_amount) from Orders);

alter table orders
add status varchar(30);

select * from orders;

update Orders
set status = 'cancelled' where order_id in (101,109);

select * from Orders;

Select customer_id,name from Customers  where Exists (Select customer_id from Orders where Orders.customer_id = Customers.customer_id);

Select customer_id,name from Customers  where not  Exists (Select customer_id from Orders where Orders.customer_id = Customers.customer_id);

Select * from Customers c join (Select customer_id,SUM(total_amount) as total_amount from Orders  group by customer_id) o on c.customer_id = o.customer_id;

Select c.customer_id,c.name,o.total_amount from Customers c join (Select customer_id,SUM(total_amount) as total_amount from Orders  group by customer_id) o on c.customer_id = o.customer_id;