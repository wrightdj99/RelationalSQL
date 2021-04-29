--------------------------------------------------------
--  DDL for Table TRIPS
--------------------------------------------------------


--drop table bycar;
--drop table byplane;
--drop table bytrain;
--drop table trips

  CREATE TABLE TRIPS 
   (	"TID" INTEGER, 
	"TRIPSTATE" VARCHAR2(10 BYTE), 
	"TRAVELMODE" VARCHAR2(6 BYTE), 
	"FARE" FLOAT(12),
   Primary key(TID)
   ); 
   
   CREATE TABLE ByCar 
   (	TID INTEGER, 
	RentalCompany VARCHAR2(50 BYTE), 
	Mileage Number(4,2),
  Foreign Key (TID) REFERENCES TRIPS(TID)
   );
   
   CREATE TABLE ByTrain
   (	TID INTEGER,
	Type VARCHAR2(50 BYTE), 
  Coach VARCHAR2(30 BYTE),
  TrainSpeed VARCHAR2(10 BYTE),
	NumberofStops NUMBER(12,0),
  Foreign Key (TID) REFERENCES TRIPS(TID)
   );
   
    CREATE TABLE ByPlane
   (	TID INTEGER, 
	Airline VARCHAR2(40 BYTE), 
  Class VARCHAR2(30 BYTE),
  LayoverTime FLOAT(10),
  Foreign Key (TID) REFERENCES TRIPS(TID)
   ); 
   


INSERT INTO Trips (TID,TripState,TravelMode,Fare) VALUES (1,'IL','Car',100);
INSERT INTO Trips (TID,TripState,TravelMode,Fare) VALUES (2,'CA','Plane',1020);
INSERT INTO Trips (TID,TripState,TravelMode,Fare) VALUES (3,'MD','Plane',1300);
INSERT INTO Trips (TID,TripState,TravelMode,Fare) VALUES (4,'MD','Train',568);
INSERT INTO Trips (TID,TripState,TravelMode,Fare) VALUES (5,'Non-US','Plane',2300);
INSERT INTO Trips (TID,TripState,TravelMode,Fare) VALUES (6,'IL','Train',256);
INSERT INTO Trips (TID,TripState,TravelMode,Fare) VALUES (7,'Non-US','Plane',5000);
INSERT INTO Trips (TID,TripState,TravelMode,Fare) VALUES (8,'NM','Train',13);
INSERT INTO Trips (TID,TripState,TravelMode,Fare) VALUES (9,'IN','Car',400);
INSERT INTO Trips (TID,TripState,TravelMode,Fare) VALUES (10,'Non-US','Train',229);
INSERT INTO Trips (TID,TripState,TravelMode,Fare) VALUES (11,'Non-US','Plane',4500);
INSERT INTO Trips (TID,TripState,TravelMode,Fare) VALUES (12,'Non-US','Train',258);
INSERT INTO Trips (TID,TripState,TravelMode,Fare) VALUES (13,'IL','Plane',640);
INSERT INTO Trips (TID,TripState,TravelMode,Fare) VALUES (14,'Non-US','Train',138);
INSERT INTO Trips (TID,TripState,TravelMode,Fare) VALUES (15,'IL','Car',380);
INSERT INTO Trips (TID,TripState,TravelMode,Fare) VALUES (16,'IL','Car',59);
INSERT INTO Trips (TID,TripState,TravelMode,Fare) VALUES (17,'Non-US','Plane',3700);
INSERT INTO Trips (TID,TripState,TravelMode,Fare) VALUES (18,'IN','Car',88);
INSERT INTO Trips (TID,TripState,TravelMode,Fare) VALUES (19,'MD','Plane',600);
INSERT INTO Trips (TID,TripState,TravelMode,Fare) VALUES (20,'IL','Car',75);
INSERT INTO Trips (TID,TripState,TravelMode,Fare) VALUES (21,'IL','Car',156);
INSERT INTO Trips (TID,TripState,TravelMode,Fare) VALUES (22,'Non-US','Train',40);
INSERT INTO Trips (TID,TripState,TravelMode,Fare) VALUES (23,'IL','Plane',900);
INSERT INTO Trips (TID,TripState,TravelMode,Fare) VALUES (24,'MD','Train',650);
INSERT INTO Trips (TID,TripState,TravelMode,Fare) VALUES (25,'CA','Car',114);

INSERT INTO ByCar (TID,RentalCompany,Mileage) VALUES (1,'Budget',19.75);
INSERT INTO ByCar (TID,RentalCompany,Mileage) VALUES (9,'Enterprise',19.75);
INSERT INTO ByCar (TID,RentalCompany,Mileage) VALUES (15,'Almo',22.5);
INSERT INTO ByCar (TID,RentalCompany,Mileage) VALUES (16,'Personal',30);
INSERT INTO ByCar (TID,RentalCompany,Mileage) VALUES (18,'Enterprise',22.5);
INSERT INTO ByCar (TID,RentalCompany,Mileage) VALUES (20,'Personal',29);
INSERT INTO ByCar (TID,RentalCompany,Mileage) VALUES (21,'Personal',27);
INSERT INTO ByCar (TID,RentalCompany,Mileage) VALUES (25,'Enterprise',19.75);


INSERT INTO ByTrain (TID,Type,Coach,TrainSpeed,NumberOfStops) VALUES (4,'Union Pacific Liner/Express','Chair car',50,4);
INSERT INTO ByTrain (TID,Type,Coach,TrainSpeed,NumberOfStops) VALUES (6,'Amtrak/Express','Sleeper',30,3);
INSERT INTO ByTrain (TID,Type,Coach,TrainSpeed,NumberOfStops) VALUES (8,'New Mexico Liner /Express','Chair car',50,2);
INSERT INTO ByTrain (TID,Type,Coach,TrainSpeed,NumberOfStops) VALUES (10,'Japanese Nippon/SuperExpress','Chair car',70,5);
INSERT INTO ByTrain (TID,Type,Coach,TrainSpeed,NumberOfStops) VALUES (12,'Indian Railways/Bullet','Chair car',25,18);
INSERT INTO ByTrain (TID,Type,Coach,TrainSpeed,NumberOfStops) VALUES (14,'German Transit System/SuperFast','Sleeper',70,8);
INSERT INTO ByTrain (TID,Type,Coach,TrainSpeed,NumberOfStops) VALUES (22,'Indian Railways/SuperFast','Sleeper',5,14);
INSERT INTO ByTrain (TID,Type,Coach,TrainSpeed,NumberOfStops) VALUES (24,'Amtrak/Regular','Sleeper',20,2);

INSERT INTO ByPlane (TID,Airline,Class,LayoverTime) VALUES (2,'SouthWest','Premium',4);
INSERT INTO ByPlane (TID,Airline,Class,LayoverTime) VALUES (3,'American Airlines','Business',3);
INSERT INTO ByPlane (TID,Airline,Class,LayoverTime) VALUES (5,'Emirates','Economy',5);
INSERT INTO ByPlane (TID,Airline,Class,LayoverTime) VALUES (7,'Lufthansa','Economy',6);
INSERT INTO ByPlane (TID,Airline,Class,LayoverTime) VALUES (11,'Swiss Air','Economy',10);
INSERT INTO ByPlane (TID,Airline,Class,LayoverTime) VALUES (13,'SouthWest','Premium',2);
INSERT INTO ByPlane (TID,Airline,Class,LayoverTime) VALUES (17,'Korean Air','Economy',3);
INSERT INTO ByPlane (TID,Airline,Class,LayoverTime) VALUES (19,'American Airlines','Economy',1);
INSERT INTO ByPlane (TID,Airline,Class,LayoverTime) VALUES (23,'Alaska Airlines','Economy',2.5);
--Question 1
Select *
From ByCar
Where Mileage >= 27;
--Question 2
Select *
From Trips
Where TravelMode = 'Train' AND Fare >= 150;
--Question 3
Select TID, Fare
FROM Trips
Where TripState = 'Non-US';


--Question 4
Select bp.TID
From Trips Tr
join ByPlane Bp on tr.tid = Bp.tid
Where bp.tid = tr.tid AND tr.travelmode = 'Plane' AND tr.fare > 1000 AND bp.class = 'Business';
--Question 5
Select DISTINCT tr.fare AS CARFARE, tr1.fare AS TRAINFARE, tr.tripstate AS TRAINST, tr.tripstate AS CARST
From Trips tr
Join Trips tr1 on tr.TID < tr1.TID and tr.fare > tr1.fare
Where tr1.travelmode = 'Car' AND tr.travelmode = 'Train' AND (tr.tripstate = 'Non-US' or tr.tripstate = tr.tripstate);
--Question 6
Select DISTINCT trip1.mileage, trip2.mileage
from ByCar trip1, ByCar trip2
where trip1.mileage = trip2.mileage or trip2.mileage = trip1.mileage;

--Question 7
Select DISTINCT train1.TrainSpeed, train2.TrainSpeed
from ByTrain train1, ByTrain train2
where train1.trainspeed != train2.trainspeed AND train2.trainspeed > train1.trainspeed
order by train1.trainspeed ASC;
--Question 8
Select DISTINCT trip1.tid AS TRIP_1_ID, trip2.tid AS TRIP_2_ID
from Trips trip1
join Trips trip2
on trip1.tid != trip2.tid AND trip1.tid < trip2.tid AND trip1.travelmode = trip2.travelmode AND trip1.tripstate = trip2.tripstate;
--Question 9
Select DISTINCT tr.TripState, tr.TravelMode
from Trips tr, Trips tr1
where tr.TripState = tr1.tripstate AND tr.travelmode = 'Car' or tr.travelmode = 'Train' or tr.travelmode = 'Plane'
order by tr.tripstate;
--Question 10
--Part 1
Select * from trips where fare not in
(select T1.fare from Trips T1, Trips T2 where T1.fare < T2.fare);
--Part 2
Select * from trips where fare not in
(select T1.fare from Trips T1, Trips T2 where T1.fare > T2.fare);

 