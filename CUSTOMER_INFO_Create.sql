drop table CUSTOMER_INFO cascade constraints;

create table CUSTOMER_INFO
(Customer_ID_Num integer,
Customer_Name varchar2 (30),
Address varchar2 (50),
Phone_Number integer,
Email varchar2 (30),
Purchased_License_Plate char (1),
primary key (Customer_ID_Num)
);

describe CUSTOMER_INFO;
