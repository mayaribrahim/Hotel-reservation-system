drop database hotel;
CREATE database hotel;
use hotel;


CREATE TABLE Guests(
GuestID int  auto_increment ,
GuestName varchar(10),
PhoneNumber int(50),
CreditCardNumber int,
Country varchar(20),
Nationality varchar(15),
constraint Guests_pk primary key(GuestID)

);
describe Guests;

INSERT INTO Guests (GuestID, GuestName , PhoneNumber, CreditCardNumber, Country,Nationality)
Values(1,'ahmed',0251548564,1259813,'Egypt','Egyptian');

INSERT INTO Guests (GuestID, GuestName , PhoneNumber, CreditCardNumber, Country,Nationality)
Values(2,'omar',0251538564,1259813,'England','English');

INSERT INTO Guests (GuestID, GuestName , PhoneNumber, CreditCardNumber, Country,Nationality)
Values(3,'yafuz',0251549564,1259813,'canada','Canadian');

INSERT INTO Guests (GuestID, GuestName , PhoneNumber, CreditCardNumber, Country,Nationality)
Values(4,'omar',0251538564,1259813,'Mexico','Mexican');

INSERT INTO Guests (GuestID, GuestName , PhoneNumber, CreditCardNumber, Country,Nationality)
Values(5,'sarah',0251543564,1259813,'France','French');

INSERT INTO Guests (GuestID, GuestName , PhoneNumber, CreditCardNumber, Country,Nationality)
Values(6,'talia',0281538564,1259813,'Australia','Australian');

INSERT INTO Guests (GuestID, GuestName , PhoneNumber, CreditCardNumber, Country,Nationality)
Values(7,'Marcus',0253549564,1259813,'Germany','German');

INSERT INTO Guests (GuestID, GuestName , PhoneNumber, CreditCardNumber, Country,Nationality)
Values(8,'laila',0251538565,1259813,'China','Chinese');

INSERT INTO Guests (GuestID, GuestName , PhoneNumber, CreditCardNumber, Country,Nationality)
Values(9,'maher',0253541564,1259813,'(The) United States','American ');

INSERT INTO Guests (GuestID, GuestName , PhoneNumber, CreditCardNumber, Country,Nationality)
Values(10,'zain',0251538575,1259813,'Denmark','Danish');




CREATE TABLE Food
(
FoodID int auto_increment,
Category varchar(50),
 constraint Food_pk primary key(FoodID )

);
describe Food;

INSERT INTO Food(FoodID, Category )
Values(1,'vegetarian');

INSERT INTO Food(FoodID, Category )
Values(2,'meat');

INSERT INTO Food(FoodID, Category )
Values(3,'chicken');

INSERT INTO Food(FoodID, Category )
Values(4,'dessert');



CREATE TABLE Need1
(
FoodID int,
GuestID int
);
describe Need1;

CREATE TABLE Services
(
ServicesID int  ,
Category varchar(20),
  constraint services_pk primary key(ServicesID )
);
describe Services;


INSERT INTO Services(ServicesID, Category )
Values(1,'sport');

INSERT INTO Services(ServicesID, Category )
Values(2,'massage');

INSERT INTO Services(ServicesID, Category )
Values(3,'spa');

INSERT INTO Services(ServicesID, Category )
Values(4,'concerts');




CREATE TABLE Need2
(
GuestID int,
ServicesID int
);
describe Need2;

CREATE TABLE Rooms
(
RoomsID int auto_increment,
GuestID int,
Category varchar(20),
RoomNumber int,
  constraint Rooms_pk primary key(RoomsID ),
  constraint Rooms1_fk foreign key (GuestID) references Guests(GuestID)
);
describe Rooms;


INSERT INTO Rooms(RoomsID, Category,RoomNumber)
Values(1,'Single',203);

INSERT INTO Rooms(RoomsID, Category,RoomNumber)
Values(2,'Double',397);

INSERT INTO Rooms(RoomsID, Category,RoomNumber)
Values(3,'Suite',338);



select * from Guests;
select * from Rooms;
select * from Food;
select * from Services;
select PhoneNumber from Guests where GuestID=3;
select GuestName from Guests where GuestID=4;
select CreditCardNumber from Guests where GuestID=8;
select Nationality from Guests where GuestID=6;
select PhoneNumber from Guests where GuestID=4;
select GuestName from Guests where GuestID=6;
select Nationality from Guests where GuestID=1;
select CreditCardNumber from Guests where GuestID=9;
select Nationality from Guests where GuestID=3;
select CreditCardNumber from Guests where GuestID=1;
select PhoneNumber from Guests where GuestID=6;
select Country from Guests where GuestID=8;
select Category from Food where FoodID=1;
select Category from Food where FoodID=3;
select Category from Food where FoodID=2;
select Category from Services where ServicesID=2;
select Category from Services where ServicesID=1;
select Category from Services where ServicesID=3;
select RoomNumber from Rooms where RoomsID= 3;
select Category from Rooms where RoomsID= 2;


select RoomNumber,count(RoomNumber) as count from Rooms group by RoomNumber;
select RoomNumber,MAX(RoomNumber) as max from Rooms group by RoomNumber;
select RoomNumber,MIN(RoomNumber) as MIN from Rooms group by RoomNumber;

select Category,RoomNumber from Rooms where RoomsID=1 group by Category;
select RoomNumber from Rooms where RoomsID=3 group by RoomNumber ;
select GuestName,Country from Guests where GuestID=9 group by Country ;

select GuestName,PhoneNumber,RoomNumber from Guests inner join Rooms where RoomsID = 2  group by RoomNumber;
select RoomNumber ,Category from Rooms inner join Guests where Rooms.RoomsID = Guests.GuestID;
select RoomNumber,Category from Rooms LEFT JOIN Guests on  Rooms.RoomsID=Guests.GuestID where RoomNumber is not null and RoomsID = 2 group by RoomNumber;
select GuestName,Category from Guests inner join Food on Guests.GuestID = Food.FoodID where GuestID = 3 group by GuestName ;
select GuestName,PhoneNumber,RoomNumber from Guests inner join Rooms on Guests.GuestID = Rooms.RoomsID where   RoomsID = 3 group by GuestName;r from Guests inner join Rooms on Guests.GuestID = Rooms.RoomsID where   RoomsID = 3 group by GuestName;

Update Guests set GuestName ='hanan'where GuestID = 2;
Update Guests set CreditCardNumber = 1259813 where GuestID = 5;
Update Guests set country = 'turkey', Nationality = 'Turkish' where GuestID = 4;
Update Food set Category = 'Fruits'where FoodID = 2;
Update Services set Category = 'swimming'where ServicesID = 4;
Update Rooms set Category = 'Double'where GuestID =2;
Delete From Guests where GuestID = 5;
Delete From Guests where GuestID = 4;
Delete From Guests where GuestID = 2;
Delete From Food where FoodID = 2;
Delete From Services where ServicesID = 4;
Delete From Rooms where GuestID = 2;







   

    





	 


     







