create database baitap2;
create table Customer(
cID int primary key,
cName varchar(250),
cAge varchar(250)
);

create table `Order`(
oID int primary key,
cID int, foreign key(cID)references Customer(cID),
oDate date default now(),
oTotalPrice float
);

create table Product(
pID int primary key,
pName varchar(250),
pPrice float
);

create table OrderDetail(
oID int,
pID int,
primary key(oID,pID),
odQTY int
);