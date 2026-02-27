select * from Customers
select * from orders


select c.customer_id, count(*) as order_count from orders o
join Customers c
on o.customer_id=c.customer_id group by c.customer_id;

select c.customer_id,c.name as customer_name,sum(o.total_amount) as total_amount from Orders o
join Customers c on
c.customer_id=o.customer_id
group by c.customer_id,c.name;


select * from Employees
select * from Department


select d.dep_id,count(*) as count_per_dep from Department d
join Employees e
on d.dep_id=e.dep_id
group by d.dep_id


select p.product_id,count(*) as product_count from Products p
join Order_Items ot
on ot.product_id=p.product_id
group by p.product_id


select * from Department

select d.dep_id,sum(e.salary) as sum_salary from Employees e
join Department d
on d.dep_id=e.dep_id
group by d.dep_id
