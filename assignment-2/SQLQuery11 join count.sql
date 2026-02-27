select c.customer_id,COUNT(*) as order_count from Orders as o 
join Customers as c on 
o.customer_id = c.customer_id group by c.customer_id order by c.customer_id 

select d.dep_id,Count(*) as count_per_dep from Department as d 
join Employees as e on 
d.dep_id = e.dep_id 
group by d.dep_id

select p.product_id, Count(*) as product_count from products as p
join order_items as ot 
on p.product_id = ot.product_id group by p.product_id