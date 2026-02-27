insert into orders (userid, restaurantid, orderstatus, totalamount)
values
(1, 101, 'confirmed', 250),
(2, 102, 'confirmed', 300),
(3, 103, 'confirmed', 180),
(4, 104, 'confirmed', 450),
(5, 105, 'confirmed', 220),
(6, 106, 'confirmed', 390);

insert into orderitems (orderid, itemname, quantity, price)
values
(1, 'burger', 2, 100),
(2, 'pizza', 1, 300),
(3, 'sandwich', 2, 90),
(4, 'biryani', 1, 450),
(5, 'wrap', 2, 110),
(6, 'pasta', 1, 390);

insert into deliverypartners
(name, phone, currentstatus, maxactivedeliveries, currentactivedeliveries, rating)
values
('rahul', '9000000001', 'available', 2, 0, 4.5),
('amit', '9000000002', 'busy', 2, 1, 4.2),
('suresh', '9000000003', 'available', 1, 0, 4.0),
('vikram', '9000000004', 'offline', 1, 0, 3.8),
('arjun', '9000000005', 'available', 2, 0, 4.6),
('kiran', '9000000006', 'available', 1, 0, 4.1);

insert into partnershifts (partnerid, shiftstart, shiftend, shiftstatus)
values
(1, getdate(), null, 'active'),
(2, getdate(), null, 'active'),
(3, getdate(), null, 'active'),
(4, getdate(), null, 'inactive'),
(5, getdate(), null, 'active'),
(6, getdate(), null, 'active');

insert into partneravailabilityhistory (partnerid, status)
values
(1, 'available'),
(2, 'busy'),
(3, 'available'),
(4, 'offline'),
(5, 'available'),
(6, 'available');

insert into partnerlocationhistory (partnerid, latitude, longitude)
values
(1, 17.3850, 78.4867),
(2, 17.3860, 78.4870),
(3, 17.3870, 78.4880),
(4, 17.3880, 78.4890),
(5, 17.3890, 78.4900),
(6, 17.3900, 78.4910);

insert into deliveries
(orderid, partnerid, status, estimateddeliverytime)
values
(1, 1, 'delivered', dateadd(minute,30,getdate())),
(2, 1, 'delivered', dateadd(minute,40,getdate())),
(3, 1, 'delivered', dateadd(minute,35,getdate())),
(4, 5, 'delivered', dateadd(minute,30,getdate())),
(5, 2, 'out_for_delivery', dateadd(minute,25,getdate())),
(6, 3, 'assigned', dateadd(minute,30,getdate()));

insert into deliveryassignments
(deliveryid, partnerid, assignmentstatus)
values
(1,1,'accepted'),
(2,1,'accepted'),
(3,1,'accepted'),
(4,5,'accepted'),
(5,2,'accepted'),
(6,3,'accepted');

insert into deliverystatushistory
(deliveryid, status)
values
(1,'assigned'),
(1,'delivered'),
(2,'assigned'),
(2,'delivered'),
(3,'assigned'),
(3,'delivered');

insert into deliverycancellations
(deliveryid, cancelledby, reason)
values
(6,'partner','not reachable'),
(5,'customer','late delivery'),
(4,'none','none'),
(3,'none','none'),
(2,'none','none'),
(1,'none','none');

insert into partnerearnings
(deliveryid, partnerid, baseamount, incentiveamount, bonusamount)
values
(1,1,50,10,5),
(2,1,60,5,5),
(3,1,55,5,0),
(4,5,50,10,5),
(5,2,40,5,0),
(6,3,45,0,0);

insert into partnerpaymenttransactions
(partnerid, deliveryid, amount, transactiontype, transactionstatus)
values
(1,1,65,'credit','success'),
(1,2,70,'credit','success'),
(1,3,60,'credit','success'),
(5,4,65,'credit','success'),
(2,5,45,'credit','success'),
(3,6,45,'credit','pending');

insert into incentiverules
(rulename, mindeliveries, bonusamount, activefrom, activeto)
values
('weekend bonus',5,200,getdate(),dateadd(day,7,getdate())),
('rain bonus',3,100,getdate(),dateadd(day,3,getdate())),
('festival bonus',4,150,getdate(),dateadd(day,5,getdate())),
('night bonus',2,80,getdate(),dateadd(day,10,getdate())),
('peak hour',6,250,getdate(),dateadd(day,6,getdate())),
('new year special',10,500,getdate(),dateadd(day,15,getdate()));

insert into deliveryratings
(deliveryid, partnerid, rating, comment)
values
(1,1,5,'good service'),
(2,1,4,'on time'),
(3,1,5,'very fast'),
(4,5,4,'nice'),
(5,2,3,'late'),
(6,3,4,'ok');

insert into systemauditlogs
(entityname, entityid, actiontype, performedby)
values
('delivery',1,'create','system'),
('delivery',2,'update','system'),
('delivery',3,'update','system'),
('partner',1,'status_change','admin'),
('partner',2,'status_change','admin'),
('earnings',1,'credit','system');