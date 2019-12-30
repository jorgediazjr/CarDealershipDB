drop table SELLER_INFO cascade constraints;

create table SELLER_INFO
(Seller_Employee_Num integer,
Seller_Name varchar2 (30),
Seller_Phone_Num integer,
Seller_Num_Vehicles_Sold integer,
primary key (Seller_Employee_Num)
);

describe SELLER_INFO;