select top 1 
    dp.id,
    dp.name,
    count(d.id) as total_deliveries
from deliveries d
join deliverypartners dp on d.partnerid = dp.id
where d.status = 'delivered'
group by dp.id, dp.name
order by total_deliveries desc;

select 
    o.id as order_id,
    d.id as delivery_id,
    d.status,
    d.estimateddeliverytime
from deliveries d
join orders o on d.orderid = o.id
where d.status = 'out_for_delivery';


select *
from deliverypartners
where currentstatus = 'available';


select 
    dp.id,
    dp.name,
    sum(pe.totalearning) as total_earnings
from partnerearnings pe
join deliverypartners dp on pe.partnerid = dp.id
where dp.id = 1
group by dp.id, dp.name;


select *
from deliveries
where status = 'delivered'
and assignedat >= convert(date, getdate())
and assignedat < dateadd(day, 1, convert(date, getdate()));