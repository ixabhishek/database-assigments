create table orders (
    id int identity(1,1) primary key,
    userid int not null,
    restaurantid int not null,
    orderstatus varchar(20) not null,
    totalamount decimal(10,2) not null,
    createdat datetime2 default getdate()
);

create table orderitems (
    id int identity(1,1) primary key,
    orderid int not null,
    itemname varchar(200) not null,
    quantity int not null,
    price decimal(10,2) not null,
    foreign key (orderid) references orders(id)
);

create table deliverypartners (
    id int identity(1,1) primary key,
    name varchar(100) not null,
    phone varchar(20) not null,
    currentstatus varchar(20) not null,
    maxactivedeliveries int not null default 1,
    currentactivedeliveries int not null default 0,
    rating decimal(3,2) null,
    createdat datetime2 default getdate()
);

create table partnershifts (
    id int identity(1,1) primary key,
    partnerid int not null,
    shiftstart datetime2 not null,
    shiftend datetime2 null,
    shiftstatus varchar(20) not null,
    foreign key (partnerid) references deliverypartners(id)
);

create table partneravailabilityhistory (
    id int identity(1,1) primary key,
    partnerid int not null,
    status varchar(20) not null,
    changedat datetime2 default getdate(),
    foreign key (partnerid) references deliverypartners(id)
);

create table partnerlocationhistory (
    id int identity(1,1) primary key,
    partnerid int not null,
    latitude decimal(9,6) not null,
    longitude decimal(9,6) not null,
    recordedat datetime2 default getdate(),
    foreign key (partnerid) references deliverypartners(id)
);

create table deliveries (
    id int identity(1,1) primary key,
    orderid int not null unique,
    partnerid int not null,
    status varchar(30) not null,
    assignedat datetime2 default getdate(),
    estimateddeliverytime datetime2 not null,
    createdat datetime2 default getdate(),
    foreign key (orderid) references orders(id),
    foreign key (partnerid) references deliverypartners(id)
);

create table deliveryassignments (
    id int identity(1,1) primary key,
    deliveryid int not null,
    partnerid int not null,
    assignedat datetime2 default getdate(),
    assignmentstatus varchar(20) not null,
    foreign key (deliveryid) references deliveries(id),
    foreign key (partnerid) references deliverypartners(id)
);

create table deliverystatushistory (
    id int identity(1,1) primary key,
    deliveryid int not null,
    status varchar(30) not null,
    statustime datetime2 default getdate(),
    foreign key (deliveryid) references deliveries(id)
);

create table deliverycancellations (
    id int identity(1,1) primary key,
    deliveryid int not null,
    cancelledby varchar(50) not null,
    reason varchar(255),
    cancelledat datetime2 default getdate(),
    foreign key (deliveryid) references deliveries(id)
);

create table partnerearnings (
    id int identity(1,1) primary key,
    deliveryid int not null unique,
    partnerid int not null,
    baseamount decimal(10,2) not null,
    incentiveamount decimal(10,2) default 0,
    bonusamount decimal(10,2) default 0,
    totalearning as (baseamount + incentiveamount + bonusamount) persisted,
    creditedat datetime2 default getdate(),
    foreign key (deliveryid) references deliveries(id),
    foreign key (partnerid) references deliverypartners(id)
);

create table partnerpaymenttransactions (
    id int identity(1,1) primary key,
    partnerid int not null,
    deliveryid int null,
    amount decimal(10,2) not null,
    transactiontype varchar(20) not null,
    transactionstatus varchar(20) not null,
    createdat datetime2 default getdate(),
    foreign key (partnerid) references deliverypartners(id),
    foreign key (deliveryid) references deliveries(id)
);

create table incentiverules (
    id int identity(1,1) primary key,
    rulename varchar(100) not null,
    mindeliveries int not null,
    bonusamount decimal(10,2) not null,
    activefrom datetime2 not null,
    activeto datetime2 not null
);

create table deliveryratings (
    id int identity(1,1) primary key,
    deliveryid int not null,
    partnerid int not null,
    rating int not null,
    comment varchar(255),
    ratedat datetime2 default getdate(),
    foreign key (deliveryid) references deliveries(id),
    foreign key (partnerid) references deliverypartners(id)
);

create table systemauditlogs (
    id int identity(1,1) primary key,
    entityname varchar(100) not null,
    entityid int not null,
    actiontype varchar(50) not null,
    performedby varchar(100),
    performedat datetime2 default getdate()
);

