
SELECT * FROM CAR_INFO;
SELECT * FROM CARS_BEING_SOLD;
SELECT * FROM SELLER_INFO;
SELECT * FROM CUSTOMER_INFO;

DESCRIBE CAR_INFO;
DESCRIBE SELLER_INFO;
DESCRIBE CUSTOMER_INFO;

REM TRIGGERS CREATED FOR LAST PART OF THE PROJECT

REM 1ST TRIGGER
DROP TRIGGER T_CARINFO;

SELECT * FROM CAR_INFO;
SELECT * FROM CARS_BEING_SOLD;

CREATE TRIGGER T_CARINFO
AFTER DELETE ON CAR_INFO
FOR EACH ROW
DELETE FROM CARS_BEING_SOLD
WHERE CAR_VIN_NUM = :OLD.CAR_VIN_NUM
/

DELETE FROM CAR_INFO WHERE MANUFACTURER = 'Toyota';

SELECT * FROM CAR_INFO;
SELECT * FROM CARS_BEING_SOLD;

REM 2ND TRIGGER
DROP TRIGGER T_CUSTOMER;

SELECT * FROM CUSTOMER_INFO;
SELECT * FROM CARS_BEING_SOLD;

CREATE TRIGGER T_CUSTOMER
AFTER INSERT ON CUSTOMER_INFO
FOR EACH ROW
INSERT INTO CARS_BEING_SOLD
VALUES (999999, 'N', 99999999999999999, 9999.99, :NEW.CUSTOMER_ID_NUM)
/

INSERT INTO CUSTOMER_INFO 
VALUES (91827364, 'laporte Quer', '124 5th Ave, Queens, New York(NY), 11706', 7186263839, 'laporte123@gmail.com', 'N');

SELECT * FROM CUSTOMER_INFO;
SELECT * FROM CARS_BEING_SOLD;