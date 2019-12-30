drop table CAR_INFO cascade constraints;

create table CAR_INFO 
(Car_Vin_Num varchar2 (17),
License_Plate varchar2 (7),
License_Plate_State char (2),
Car_Model varchar2 (30),
Car_Year integer,
Manufacturer varchar2 (30),
Mileage integer,
Color varchar2 (10),
Car_Type varchar2 (30),
Drive_Train varchar2 (20),
Num_Of_Owners integer,
Seller_Employee_Num integer,
primary key (Car_Vin_Num)
);

describe CAR_INFO;