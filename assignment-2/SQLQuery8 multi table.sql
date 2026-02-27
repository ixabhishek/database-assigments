select * from customers c
join orders o
on c.customer_id=o.customer_id
join Order_Items ot 
on o.order_id=ot.order_id
join Products p
on p.product_id=ot.product_id;

select * from Orders as o
join order_items as ot on 
o.order_id = ot.order_id
join products as p on 
p.product_id = ot.product_id 
join suppliers as sp on 
sp.supplier_id = p.supplier_id;


 select * from Employees as e 
 join Department as d on 
 e.dep_id = d.dep_id


 select o.customer_id,o.order_number,p.product_name,sp.supplier_id,sp.supplier_name from Orders as o
 join order_items as ot on 
 o.order_id = ot.order_id
 join products as p on 
 p.product_id = ot.product_id 
 join suppliers as sp on 
 sp.supplier_id = p.supplier_id 
