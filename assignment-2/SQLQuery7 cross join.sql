select * from Customers;

select * from Products;

select c.customer_id,
c.name as customer_name,
p.product_id,
p.product_name,
p.price
from Customers c
cross join Products p;

select * from customers c
cross join products p;