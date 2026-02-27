select * from Customers;
select * from Orders;
select * from Products;
select * from Order_Items;

select c.customer_id,c.name,t.average_amounts,
case 
when t.average_amounts>5002 then 'good'
when t.average_amounts>5002 then 'bad'
else 'regular'
end as customer_type
from customers c
join(select customer_id,avg(total_amount) as average_amounts from Orders group by customer_id)
t on c.customer_id=t.customer_id
join Orders o on 
o.order_id=c.customer_id
join Products p on
p.product_id=o.order_id
where exists(select * from orders where c.customer_id=t.customer_id);


select c.customer_id,c.name,t.total_amounts,
case 
when t.total_amounts>5000 then 'good'
when t.total_amounts>3477 then 'bad'
else 'okay'
end as customer_type
from Customers c
join(select customer_id,sum(total_amount) as total_amounts from orders t group by customer_id)
t on c.customer_id=t.customer_id
where exists(select * from Orders where c.customer_id=t.customer_id);