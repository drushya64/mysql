CREATE DATABASE Transport;
USE Transport;

create table transportData(transportId int, transportType varchar(30), bookingType varchar(20), noOfPassengers smallint, daysOftravel varchar(35), price  float);

INSERT INTO transportData values(010, "Bus","Offline",62,'6D&5N', 9999.99);
INSERT INTO transportData values(021, "Car","Offline",7,'4D&3N', 5989.99);
INSERT INTO transportData values(034, "AirBus","Online",436,'15D&14N', 49999.99);
INSERT INTO transportData values(048, "Train","Online",38,'11D&10N', 14599.99);
INSERT INTO transportData values(056, "2 Wheeler","Offline",2,'2D&1N', 1599.99);

Select * FROM transportData;

ALTER TABLE transport.transportdata ADD packageType int;	/*Add column for existing table*/
ALTER TABLE transport.transportdata MODIFY COLUMN packageType varchar(25); /*Modify data type for existing column*/

UPDATE transport.transportdata SET packageType ='Silver' WHERE transportId = 010; /*Update column data for existing column*/
set sql_safe_updates =0;
UPDATE transport.transportdata SET packageType ='Gold' WHERE transportId = 021;
UPDATE transport.transportdata SET packageType ='Elite' WHERE transportId = 034;
UPDATE transport.transportdata SET packageType ='Bronze' WHERE transportId = 048;
UPDATE transport.transportdata SET packageType ='Platinum' WHERE transportId = 056;

ALTER TABLE  transport.transportdata RENAME COLUMN packageType to TypeOfPackage; /* To Rename Coumn name*/
Select * FROM transportData order by transportId;	/*Re-arrage by id*/

INSERT INTO transport.transportdata VALUES(064,"TempoTraveller",'offline',13,'7D&6N',3499.99,'Economy');
INSERT INTO transportData values(073, "MiniBus","Offline",28,'3D&3N', 4199.99,"ClubClass");

DELETE FROM transport.transportdata WHERE noOfPassengers = '2';

INSERT INTO transportData values(056, "2 Wheeler","Offline",2,'2D&1N', 1599.99,'Platinum');

ALTER TABLE transport.transportdata RENAME to dataOfTransport;

Select * FROM transport.dataoftransport order by transportId;	/*Re-arrage by id*/

SELECT * FROM transport.dataoftransport WHERE  transportid=64;

SELECT * FROM transport.dataoftransport WHERE typeOfpackage = 'Elite';
