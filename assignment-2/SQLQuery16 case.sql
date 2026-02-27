 select e.emp_id,e.emp_name,d.dep_id,e.salary from Employees as e 
 join Department d on 
 e.dep_id=d.dep_id

 select e.emp_id,e.emp_name,d.dep_id,e.salary from Employees as e 
 join Department d on 
 e.dep_id=d.dep_id


 select * from Employees 
 where salary=75000

 select *,
 case when salary > 40000 and salary <=50000 then 'Low salary'
  when salary >50000 and salary <=60000 then 'Medium salary'
 else 'High Salary'
 end as salary_status
 from Employees 

 select *,
 case when name='sahith' or name='rishi' then 'bad'
 when name='jaideep' or name='amogh' then 'good'
 else 'alright'
 end as character
 from Customers;