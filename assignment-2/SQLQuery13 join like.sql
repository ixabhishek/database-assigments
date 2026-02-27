select * from Customers as c 
join Orders as o on 
c.customer_id = o.customer_id 
where c.name like 's%'


select * from Employees as e 
join Department as d on 
e.dep_id = d.dep_id where e.emp_name like 'A%' or d.dep_name like 'E%'

select * from Products as p 
join Order_Items as ot on 
p.product_id = ot.product_id where p.price>1000 order by p.product_id