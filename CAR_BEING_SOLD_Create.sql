drop table CARS_BEING_SOLD cascade constraints;

create table CARS_BEING_SOLD
(Order_ID integer,
Sold_Status char (1),
Car_Vin_Num varchar2 (17),
Price number(7,2),
Customer_ID_Num integer,
primary key (Order_ID)
);

describe CARS_BEING_SOLD;