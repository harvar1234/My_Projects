create database BOOKINGSYSTEM;

create table company(
	companyid	int			 primary key,
	companytype	varchar(20)	 not null,
	companyname	varchar(25)  not null,
	status		varchar(10)	 check(status='yes' or status='no'),
	companymoto	varchar(100) not null
);
drop table company;
alter table company drop column description;
alter table company add companymoto varchar(100) not null;


select *from company;
insert into company values(1001,'Government','Indian_bookings','yes','lets ride');
insert into company values(1002,'Government','AP_travels','yes','start to move');
insert into company values(1003,'Private','Make_my_trip','yes','dil tho roaming hai');
insert into company values(1004,'private','TravelBea','yes','lets go');
insert into company values(1005,'Government','Bharath_jao','yes','to travel is to live');
insert into company values(1006,'private','Skylink_globetrotters','yes','travel and tours');
drop table company;
create table administrator(
	adminid		int		primary key,
	adminname	varchar(25) not null,
	loginid		varchar(25) unique,
	password	varchar(50) not null,
	status		varchar(10) not null check(status='yes' or status='no')
);
--drop table administrator;
insert into administrator values(2001,'Dheeraj','deerajroyal563','deerajroyal563@','yes');
insert into administrator values(2002,'Chatrapathi','chatrapathi.gantala','chatrapathi.gantala@','yes');
insert into administrator values(2003,'Koushik','nameiskoushik','nameiskoushik@','yes');
insert into administrator values(2004,'Harsha','kharshavardhan2009','kharshavardhan2009@','yes');
insert into administrator values(2005,'Kethika','Kethika143','Kethika143@','yes');


select *from administrator;

create table customer_info(
	customerid	 int			primary key,
	customername varchar(25)	not null,
	dob			 date			not null,
	gender		 varchar(10)	not null check(Gender='M' or Gender='F'),
	address		 varchar(500)   not null,
	contact		 varchar(20)	not null,	
	state		 varchar(20)	not null,
	country		 varchar(25)	not null,
	pincode		 varchar(10)	not null,
	emailid		 varchar(20)	not null,
	loginid		 varchar(20)	not null unique,
	password	 varchar(50)	not null,
	status		 varchar(10)	check(status='yes' or status='no')
)
select * from customer_info;
insert into customer_info values(202201,'Ramesh','01/jan/2002','M','TPT',8099374532,'AndhraPradesh','India',517507,'ramesh2002@gmail.com','ramesh2002','ramesh@2002','yes');
insert into customer_info values(202202,'Vani','23/nov/1992','F','CHITT',9099374532,'AndhraPradesh','India',517501,'Vani1992@gmail.com','Vani1992','Vani@1992','yes');
insert into customer_info values(202203,'Suresh','09/sep/2000','M','BENGLR',7099374532,'karnataka','India',442823,'Suresh2000@gmail.com','Suresh2000','Suresh@2000','yes');
insert into customer_info values(202204,'Karthik','29/aug/1993','M','DELHI',6099374532,'Delhi','India',103837,'Karthik193@gmail.com','Karthik1993','Karthik@1993','yes');
insert into customer_info values(202205,'Pushpa','01/jul/1998','F','HYD',8019374532,'Telangana','India',523084,'Pushpa1998@gmail.com','Pushpa1998','Pushpa@1998','yes');
insert into customer_info values(202206,'PSPK','17/jan/1982','M','GOA',8096574532,'Goa','India',533973,'PSPK1982@gmail.com','PSPK1982','PSPK@1982','yes');
insert into customer_info values(202207,'Dheeraj','01/jun/2009','M','LUCK',7039374532,'Haryana','India',203872,'Deeraj2009@gmail.com','Deeraj2009','Deeraj@2009','yes');
insert into customer_info values(202208,'Harsha','03/mar/1992','M','PATNA',8099121352,'HimachalPradesh','India',103822,'Harsha1992@gmail.com','Harsha1992','Harsha@1992','yes');
insert into customer_info values(202209,'Chanti','21/jan/2002','M','Trissur',6099374510,'Kerala','India',402893,'Chanti2002@gmail.com','Chanti2002','Chanti@2002','yes');
insert into customer_info values(202210,'Roja','01/apr/1997','F','TPT',8099370010,'AndhraPradesh','India',517507,'Roja1997@gmail.com','Roja1997','Roja@1997','yes');
insert into customer_info values(202211,'Vaishnavi','14/jan/1998','F','TPT',7779374532,'AndhraPradesh','India',517507,'Vaishu1998@gmail.com','Vaishnavi1998','Vaishnavi@1998','yes');
insert into customer_info values(202212,'Sarika','19/may/1999','F','CHEN',8000374532,'TamilNadu','India',384922,'Sarika1999@gmail.com','Sarika1999','Sarika@1999','yes');
insert into customer_info values(202213,'Stev','29/dec/2005','M','CHIT',8099332142,'AndhraPradesh','India',517501,'Stev2005@gmail.com','Stev2005','Stev@2005','yes');
insert into customer_info values(202214,'Leela','20/oct/2003','F','DOOARS',8099000532,'WestBengal','India',230832,'Roopa2003@gmail.com','Roopa2003','Roopa@2003','yes');
insert into customer_info values(202215,'Pravathi','22/nov/2009','F','GOA',9632374532,'GOA','India',533973,'Pravathi29@gmail.com','Pravathi2009','Pravathi@2009','yes');
insert into customer_info values(202216,'Supriya','09/dec/2003','F','DOOARS',8096548032,'WestBengal','India',230832,'Supriya203@gmail.com','Supriya2003','Supriya@2003','yes');
insert into customer_info values(202217,'Priya','20/oct/2007','F','DELHI',6699374532,'Delhi','India',103837,'Priya2007@gmail.com','Priya2007','Priya@2007','yes');
insert into customer_info values(202218,'Rajini','03/feb/1974','F','PATNA',7399374532,'HimachalPradesh','India',103822,'Rajini1974@gmail.com','Rajini1974','Rajini@1974','yes');
insert into customer_info values(202219,'Chinnu','31/jan/1992','F','DOOARS',8010174532,'WestBengal','India',230832,'Chinnu1992@gmail.com','Chinnu1992','Chinnu@1992','yes');
insert into customer_info values(202220,'ROhan','01/mar/1991','M','BENGLR',8099374532,'karnataka','India',442823,'ROhan1991@gmail.com','ROhan1991','ROhan@1991','yes');
insert into customer_info values(202221,'Rithwik','11/jan/1992','M','Trissur',8062480532,'Kerala','India',402893,'Rithwik192@gmail.com','Rithwik1992','Rithwik@1992','yes');
insert into customer_info values(202222,'Somesh','28/jun/2001','M','PATNA',9999374532,'HimachalPradesh','India',103822,'Somesh2001@gmail.com','Somesh2001','Somesh@2001','yes');
insert into customer_info values(202223,'Bindu','01/may/2002','F','BENGLR',6239374532,'karnataka','India',412023,'Bindu2006@gmail.com','Bindu2006','Bindu@2006','yes');
insert into customer_info values(202224,'Balaji','29/sep/2006','M','BENGLR',9599374532,'karnataka','India',442823,'Balaji2006@gmail.com','Balaji2006','Balaji@2006','yes');
select *from customer_info;

create table receipt(
	receiptid	 int		 primary key,
	customerid	 int		 foreign key(customerid) references customer_info1(customerid),
	billingcost	 float(10)	 not null,
	tax			 float(10)   not null,
	date		 date		 not null,
	payment_type varchar(20) not null,
	cardno		 varchar(25) not null,
	status		 varchar(20) check(status='yes' or status='no')
);
drop table receipt;
select *from receipt;
insert into receipt values(5000,202201,8561,45,'21/nov/2021','credit','2345654311','yes');
insert into receipt values(5001,202202,108020,450,'12/09/2021','debit','2125654311','yes');
insert into receipt values(5002,202203,12561,100,'11/10/2021','upi','2345651211','yes');
insert into receipt values(5003,202204,6561,200,'01/jan/2022','net banking','23454311','yes');
insert into receipt values(5004,202205,9562,310,'28/feb/2022','credit','234543891','yes');
insert into receipt values(5005,202206,21256,1000,'26/mar/2022','net banking','23454981','yes');
insert into receipt values(5006,202207,98561,2000,'29/mar/2022','upi','23454325','yes');
insert into receipt values(5007,202209,32561,1030,'31/mar/2022','credit','782454311','yes');
insert into receipt values(5008,202210,89961,100,'02/apr/2022','net banking','23454897','yes');
insert into receipt values(5009,202211,102332,3000,'06/apr/2022','debit','9809897897','yes');
insert into receipt values(5010,202212,56211,1200,'06/apr/2022','credit','879766756','yes');
insert into receipt values(5011,202213,67161,2500,'07/apr/2022','upi','23456783','yes');
insert into receipt values(5012,202214,76342,2300,'07/apr/2022','net banking','2345432245','yes');
insert into receipt values(5013,202215,3421,50,'12/apr/2022','credit','2567579863','yes');
insert into receipt values(5014,202216,1268,20,'13/apr/2022','upi','23467678','yes');
insert into receipt values(5015,202217,1561,30,'14/apr/2022','debit','23454342','yes');
select * from receipt;
select *from bus;

create table booking(
	bookingid		int			primary key,
	receiptid		int not null	foreign key(receiptid) references receipt(receiptid),
	bookingtype		varchar(20) not null,
	ticketid		int not null	unique,
	seatno			varchar(25) not null	unique,
	passengername	varchar(25) not null,
	gender varchar(10)	check(Gender='M' or Gender='F'),
	contact varchar(15) not null,
	status	varchar(10)		check(status='yes' or status='no')
);
drop table booking;
select * from booking;
alter table booking add travel_type varchar(20);
insert into booking values(1800,5000,9000,21,'Mallesh','M','44567877','yes','Bus');
insert into booking values(1801,5001,9001,24,'Mounika','F','32132131','yes','Flight');
insert into booking values(1802,5002,9002,23,'Dheeraj','M','44567877','yes','Bus');
insert into booking values(1803,5003,9003,25,'Messi','M','44564345','yes','Flight');
insert into booking values(1804,5004,9004,27,'Sruthi','F','52673434','yes','Train');
insert into booking values(1805,5005,9005,31,'Muni','M','14567543','yes','Bus');
insert into booking values(1806,5006,9006,54,'Mallesh','M','44567877','yes','Bus');
insert into booking values(1807,5007,9007,67,'Sunny','F','34567875','yes','Train');
insert into booking values(1808,5008,9008,65,'Lisa','F','36567879','yes','Flight');
insert into booking values(1809,5009,9009,62,'Pooja','F','32567870','yes','Bus');
insert into booking values(1810,5010,9010,81,'Virat','M','98808716','yes','Flight');
insert into booking values(1811,5011,9011,73,'Rohith','M','44567881','yes','Train');
insert into booking values(1812,5012,9012,76,'Anushka','F','44563232','yes','Bus');
insert into booking values(1813,5013,9013,56,'Mahi','M','44567852','yes','Flight');
insert into booking values(1814,5014,9014,43,'Siraj','M','64567821','yes','Train');

create table cancellation(
	cancellation_id 		int 		primary key,
	receiptid 			int 		foreign key(receiptid) references receipt(receiptid),
	refundamount 		float(10) 	not null,
	cancellationdate 	date 		not null,
	status 			varchar(10) 	check(status='yes' or status='no')
);
select *from cancellation;
insert into cancellation values(1100,5000,250,'2021/09/12','yes');
insert into cancellation values(1101,5001,500,'2021/08/12','yes');
insert into cancellation values(1102,5002,503,'2021/09/22','yes');
insert into cancellation values(1103,5003,5900,'2021/10/22','yes');
insert into cancellation values(1104,5004,350,'2021/11/12','yes');
insert into cancellation values(1105,5005,570,'2021/11/02','yes');
insert into cancellation values(1106,5006,510,'2021/11/02','yes');
insert into cancellation values(1107,5007,540,'2021/11/02','yes');
insert into cancellation values(1108,5008,6000,'2021/11/03','yes');
insert into cancellation values(1109,5009,850,'2021/11/04','yes');
insert into cancellation values(1110,5010,5400,'2021/09/04','yes');
insert into cancellation values(1111,5011,12000,'2021/09/06','yes');
insert into cancellation values(1112,5012,19000,'2021/09/08','yes');
insert into cancellation values(1113,5013,12350,'2021/09/10','yes');
insert into cancellation values(1114,5014,8900,'2021/09/11','yes');


create table flight(
	flightid			int			primary key,
	companyid			int			foreign key(companyid) references company(companyid),
	alocationid			int			not null,
	dlocationid			int			not null,
	departtime			datetime	not null,
	arrivetime			datetime	not null,
	economyseats		int			not null,
	businessseats		int			not null,
	firstclassseats		int			not null,
	econ_tax			float(10)	not null,
	business_tax		float(10)	not null,
	firstclass_tax		float(10)	not null,
	status				varchar(10)	check(status='yes' or status='no')
);

drop table flight;
insert into flight values(1600,1001,2513,242,'14:55:00','17:10:00',183,183,183,7652,21897,123547,'yes');
insert into flight values(1601,1002,173,243,'19:40:00','21:15:00',190,100,50,9836,23418,103481,'yes');
insert into flight values(1602,1003,817,262,'14:30:00','16:40:00',200,70,50,8234,33678,101618,'yes');
insert into flight values(1603,1004,5036,113,'02:25:00','05:15:00',150,50,50,9027,31619,132451,'yes');
insert into flight values(1604,1005,807,186,'17:15:00','20:15:00',153,65,45,8562,31456,121340,'yes');
insert into flight values(1605,1006,809,916,'19:50:00','22:40:00',143,65,50,8653,24765,132546,'yes');
insert into flight values(1606,1003,809,916,'19:50:00','22:40:00',165,65,55,9231,21435,134242,'yes');
insert into flight values(1607,1004,854,953,'20:40:00','07:50:00',175,85,65,7567,23035,115662,'yes');
insert into flight values(1608,1001,868,809,'21:15:00','00:05:00',167,98,50,8976,33412,152890,'yes');
insert into flight values(1609,1002,871,891,'11:10:00','15:55:00',176,50,50,12378,36789,156890,'yes');
select * from flight;

create table train(
	trainid			int		 primary key,
	companyid		int			foreign key(companyid) references company(companyid),
	slocation		varchar(50) not null,
	dlocation		varchar(50) not null,
	arrivaltime		time	not null,
	departuretime	time	not null,
	trainname		varchar(25) not null,
	traintype		varchar(25) not null,
	sleeperseats	int		 not null,
	seaterseats		int		 not null,
	seatercost		float(10)	not null,
	sleepercost		float(10)	not null,
	status			varchar(25) check(status='yes' or status='no')
);
drop table train;
select *from train;
--delete from train where trainid=1501;
insert into train values(1501,1001,'chennai','pune','16:00:00','16:30:00','RJPBTEJASRAJ','GEN',1500,134,250,650,'yes');
insert into train values(1502,1003,'pune','delhi','1:30:00','2:00:00','IRCTCTEJAS','EXP',298,629,300,690,'yes');
insert into train values(1503,1004,'hyderabad','mumbai','12:00:00','1:30:00','VIKRAMSHILA','EXP',172,987,350,720,'yes');
insert into train values(1504,1005,'vizag','chennai','18:10:00','19:45:00','BIHAR S KRANTI','GEN',990,124,250,600,'yes');
insert into train values(1505,1002,'jaipur','kanpur','6:15:00','7:45:00','ANVT REWA','EXP',128,839,310,580,'yes');
insert into train values(1506,1004,'bhopla','patna','20:00:00','21:00:00','ANVT MUA','EXP',234,927,240,500,'yes');
insert into train values(1507,1006,'assam','delhi','18:30:00','19:00:00','LICHCHIVI','GEN',1300,120,300,720,'yes');
insert into train values(1508,1003,'kerala','orrisa','17:00:00','17:30:00','UNCHARGHAR','EXP',98,897,280,590,'yes');
insert into train values(1509,1004,'orrisa','gujarat','16:30:00','17:00:00','SANGAM','GEN',1550,114,320,650,'yes');
insert into train values(1510,1005,'hyderabad','vizag','16:00:00','17:30:00','MAHANANDA','EXP',192,903,280,700,'yes');
insert into train values(1511,1006,'gujarat','delhi','14:00:00','15:00:00','NEELANCHAL','EXP',187,729,300,640,'yes');

create table location(
	locationid		int			 primary key,
	locationtype	varchar(25)	 not null,
	locationtitle	varchar(100) not null,
	status			varchar(10)	 check(status='yes' or status='no')
);
--alter table location
--drop column description;
select *from location;
insert into location values(1900,'Beach Areas','Goa','yes');
insert into location values(1901,'Winter sport areas','Whistler','yes');
insert into location values(1902,'Natural areas','The Himalayas','yes');
insert into location values(1903,'tourist cities','Bangkok','yes');
insert into location values(1904,'cities','Berlin','yes');
insert into location values(1905,'cities','London','yes');
insert into location values(1906,'culture and heritage','Taj Maha','yes');
insert into location values(1907,'culture and heritage','Tirupathi','yes');
insert into location values(1908,'culture and heritage',' Ankor Wat','yes');
insert into location values(1909,'islands','Jamaica','yes');
insert into location values(1911,'Beach resorts','Bali ','yes');
insert into location values(1912,'Beach resorts',' Phu Quoc Island','yes');
insert into location values(1913,'Hill stations',' Mount Kilimanjaro','yes');
insert into location values(1914,'forests',' Great Bear Rainforest','yes');



create table rating(
	ratingid		int			 primary key,
	customerid		int			 foreign key(customerid) references customer_info1(customerid),
	companyid		int			 foreign key(companyid) references company1(companyid),			
	rating			int			 not null,
	commenttitle	varchar(100) not null,
	comments		text		 not null,
	ratingdate		date		 not null,
	status			varchar(10)  check(status='yes' or status='no')
);
alter table rating
drop column ratingtype;
select *from rating;
insert into rating values(3001,202201,1001,10,'bus','nice ride','2022/06/12','yes');
insert into rating values(3002,202202,1002,7,'train','needs improvement','2022/06/11','yes');
insert into rating values(3003,202203,1003,6,'bus','needs Tv','2022/06/14','yes');
insert into rating values(3004,202204,1004,9,'flight','friendly staff','2022/06/18','yes');
insert into rating values(3005,202205,1005,7,'flight','Average','2022/06/19','yes');
insert into rating values(3006,202206,1006,9,'flight','Lovely comfort','2022/06/20','yes');
insert into rating values(3007,202207,1002,6,'flight','Discomfort','2022/06/21','yes');
insert into rating values(3008,202208,1003,8,'flight','Ground crew were amazing','2022/07/01','yes');
insert into rating values(3009,202209,1001,7,'flight','Average','2022/06/19','yes');
insert into rating values(3010,202210,1005,8,'bus','good','2022/07/19','yes');
insert into rating values(3011,202211,1006,10,'train','very good','2022/07/21','yes');
insert into rating values(3012,202212,1002,9,'train','good','2022/07/25','yes');
insert into rating values(3013,202213,1003,7,'train','Discomfort','2022/07/28','yes');
insert into rating values(3014,202214,1001,9,'train','Good','2022/07/30','yes');
insert into rating values(3015,202215,1006,10,'bus','smooth journey','2022/08/03','yes');


create table service(
	serviceid		int			 primary key,
	servicetype		varchar(50)  not null,
	/*servicetitle	varchar(100) not null,*/
	cost			float(10)	 not null,
	status			varchar(10)  check(status='yes' or status='no')
);
--alter table service
--drop column servicetitle;
--drop table service;
select *from service;
insert into service values(6000,'Bus',10,'yes');
insert into service values(6001,'Train',30,'yes');
insert into service values(6002,'Flight',5000,'yes');
insert into service values(6003,'Train',40,'yes');
insert into service values(6004,'Bus',20,'yes');
insert into service values(6005,'Flight',4100,'yes');x
insert into service values(6006,'Train',50,'yes');
insert into service values(6007,'Bus',30,'yes');
insert into service values(6008,'Bus',23,'yes');
insert into service values(6009,'Train',45,'yes');
insert into service values(6010,'Flight',4250,'yes');
insert into service values(6011,'Bus',51,'yes');
insert into service values(6012,'Flight',3400,'yes');
insert into service values(6013,'Flight',2590,'yes');
insert into service values(6014,'Train',61,'yes');

create table bus(

	busid			int			primary key,
	companyid		int			foreign key(companyid) references company(companyid),
	bustype			varchar(25) 	not null,
	sleeperseats	int			not null,
	seaterseats		int			 not null,
	status		varchar(10)		check(status='yes' or status='no')
);



insert into bus values(1200,1002,'A/C',30,30,'yes');
insert into bus values(1201,1003,'A/C ',25,30,'yes');
insert into bus values(1202,1004,'A/C Semi Sleeper ',35,15,'yes');
insert into bus values(1203,1005,'A/C Semi Sleeper',40,20,'yes');
insert into bus values(1204,1002,'A/C Sleeper',30,30,'yes');
insert into bus values(1205,1006,'A/C Semi Sleeper',20,30,'yes');
insert into bus values(1206,1002,'NON A/C Seater',0,55,'yes');
insert into bus values(1207,1001,'NON A/C Sleeper',20,35,'yes');
insert into bus values(1208,1006,' A/C Sleeper ',35,25,'yes');
insert into bus values(1209,1003,'NON A/C Seater ',0,60,'yes');
select * from bus;

create table boardingpoints(
	boardingpointid			int				primary key,
	busid					int				foreign key(busid) references bus(busid),
	boardingpointno			int				not null,
	slocation				varchar(50)		not null,
	dlocation				varchar(50)		not null,
	arrivaltime				time			not null,
	departuretime			time			not null,
	seatercost				float(10)		not null,
	sleepercost				float(10)		not null,
	status					varchar(10)		check(status='yes' or status='no')
);

insert into boardingpoints values(1300,1200,1,'koyambedu','silk board','09:50:00','16:20:00',250,550,'yes');
insert into boardingpoints values(1301,1201,2,'egmore','magestic','08:15:00','15:15:00',150,450,'yes');
insert into boardingpoints values(1302,1202,3,'gunidy','marathahalli','08:30:00','15:40:00',100,400,'yes');
insert into boardingpoints values(1303,1203,4,'adyar','ulsoor','09:45:00','16:50:00',200,500,'yes');
insert into boardingpoints values(1304,1204,5,'selaiyur','hebbagodi','03:50:00','09:00:00',190,380,'yes');
insert into boardingpoints values(1305,1205,6,'killpauk','Hosa road','23:10:00','05:30:00',220,0,'yes');
insert into boardingpoints values(1306,1206,7,'saidapet','Hebbal','04:00:00','09:15:00',200,500,'yes');
insert into boardingpoints values(1307,1207,8,'Bliss Hotel','Leela Mahal','03:50:00','09:00:00',190,380,'yes');
insert into boardingpoints values(1308,1208,9,'Srinivasam','Mangalam','23:10:00','05:30:00',200,350,'yes');
insert into boardingpoints values(1309,1209,10,'ananthapur','kadapa','04:00:00','09:15:00',180,0,'yes');
insert into boardingpoints values(1310,1200,11,'tirupati','palamaner','09:50:00','16:20:00',250,550,'yes');
insert into boardingpoints values(1311,1202,12,'chittoor','palamaner','08:15:00','15:15:00',150,250,'yes');
insert into boardingpoints values(1312,1204,13,'vizag','hyderabad','08:30:00','15:40:00',400,650,'yes');
insert into boardingpoints values(1313,1206,14,'srikakulam','vizag','09:45:00','16:50:00',220,0,'yes');
insert into boardingpoints values(1314,1208,15,'chennai','tirupati','03:50:00','09:00:00',300,490,'yes');
insert into boardingpoints values(1315,1201,16,'banglore','chennai','09:50:00','16:20:00',250,550,'yes');
insert into boardingpoints values(1316,1203,17,'tirupati','banglore','08:15:00','15:15:00',250,650,'yes');
insert into boardingpoints values(1317,1205,18,'godavari','guntur','08:30:00','15:40:00',150,450,'yes');
insert into boardingpoints values(1318,1207,19,'pondy','chennai','09:45:00','16:50:00',200,500,'yes');
insert into boardingpoints values(1319,1209,20,'nellore','chittoor','03:50:00','09:00:00',210,0,'yes');


select * from boardingpoints;

select * from booking;
alter table booking
add  busid int foreign key (busid) references bus(busid);

alter table booking
add  trainid int foreign key (trainid) references train(trainid);

alter table booking
add  flightid int foreign key (flightid) references flight(flightid);

update booking
set busid=1200 where(bookingid=1800);
update booking
set busid=1202 where(bookingid=1802);
update booking
set busid=1205 where(bookingid=1805);
update booking
set busid=1206 where(bookingid=1806);
update booking
set busid=1209 where(bookingid=1809);
update booking
set busid=1207 where(bookingid=1812);

update booking
set trainid=1504 where(bookingid=1804);
update booking
set trainid=1507 where(bookingid=1807);
update booking
set trainid=1511 where(bookingid=1811);
update booking
set trainid=1506 where(bookingid=1814);

update booking
set flightid=1601 where(bookingid=1801);
update booking
set flightid=1603 where(bookingid=1803);
update booking
set flightid=1608 where(bookingid=1808);
update booking
set flightid=1605 where(bookingid=1810);
update booking
set flightid=1607 where(bookingid=1813);


alter table flight 
add travel_type varchar(10);
update flight
set travel_type = 'flight';

alter table bus 
add travel_type varchar(10);
update bus
set travel_type = 'bus';

select * from train;

alter table train
add travel_type varchar(20);

update train 
set travel_type = 'train';


alter table booking
add  locationid int foreign key (locationid) references location(locationid);
select * from booking;
update booking 
set locationid=1900 where(bookingid=1800);
update booking 
set locationid=1901 where(bookingid=1801);
update booking 
set locationid=1902 where(bookingid=1802);
update booking 
set locationid=1903 where(bookingid=1803);
update booking 
set locationid=1904 where(bookingid=1804);
update booking 
set locationid=1905 where(bookingid=1805);
update booking 
set locationid=1906 where(bookingid=1806);
update booking 
set locationid=1907 where(bookingid=1807);
update booking 
set locationid=1908 where(bookingid=1808);
update booking 
set locationid=1909 where(bookingid=1809);
update booking 
set locationid=1910 where(bookingid=1810);
update booking 
set locationid=1911 where(bookingid=1811);
update booking 
set locationid=1912 where(bookingid=1812);
update booking 
set locationid=1913 where(bookingid=1813);
update booking 
set locationid=1914 where(bookingid=1814);

alter table company
add adminid	 int foreign key (adminid) references administrator(adminid);

select * from company;

update company
set adminid=2001 where(companyid=1001);

update company
set adminid=2002 where(companyid=1002);

update company
set adminid=2003 where(companyid=1003);

update company
set adminid=2004 where(companyid=1004);

update company
set adminid=2005 where(companyid=1005);

update company
set adminid=2005 where(companyid=1006);

select c.customername from customer_info c,receipt r where(r.customerid=c.customerid and r.date='07/apr/2022');

select c.companyname from company c, receipt r,rating r1 
where(r1.companyid = c.companyid and r1.customerid = r.customerid and r.date = '31/mar/2022' and r1.rating<=8);

select r.date from  receipt r,rating r1 
where( r.customerid = r1.customerid and r1.rating=9);

select COUNT(b.busid) from bus b, company c where(c.companyid = b.companyid and b.companyid=1002);

select r.billingcost from receipt r, booking b, rating r1
where(r.receiptid = b.receiptid and r1.customerid = r.customerid and b.travel_type = 'Flight' and r1.rating>=9);

select distinct refundamount from cancellation
where receiptid=5000;

select c.customername from customer_info c, cancellation c1, receipt r
where(r.receiptid = c1.receiptid and c.customerid = r.customerid and c1.cancellation_id = 1103);

select c.contact from customer_info c, location l, booking b, receipt r
where(b.locationid = l.locationid and r.customerid = c.customerid and b.receiptid  = r.receiptid and l.locationtitle = 'jamaica');

--select r.receiptid from  location l, booking b, receipt r
--where(b.locationid = l.locationid  and b.receiptid  = r.receiptid and l.locationtitle = 'Phu Quoc Island');

select c.address from customer_info c, location l, booking b, receipt r
where(b.locationid = l.locationid and r.customerid = c.customerid and b.receiptid  = r.receiptid and l.locationtitle ='Bangkok');

select c.refundamount from cancellation c,customer_info c1, receipt r
where(c.receiptid = r.receiptid and r.customerid = c1.customerid and c1.emailid = 'Karthik193@gmail.com');

select distinct c.refundamount from cancellation c, receipt r,rating r1, company c1,customer_info c2
where(c.receiptid = r.receiptid and r1.companyid = c1.companyid and c2.customerid=r1.customerid and c2.customerid=r.customerid and c1.companyid = 1001);

select distinct refundamount from cancellation
where receiptid=5000;

select contact from booking where trainid=1507;

select count(ticketid) as total_bus_tickets from booking bo,flight f
where bo.flightid=f.flightid and bo.travel_type='flight';

select cost as service_cost_bus from service  where servicetype='bus';
select * from service;

select companyname,companymoto from company where status='yes';

select * from company;
select *from administrator a, company c
where a.adminid=c.adminid and companyname='Skylink_globetrotters';

select distinct cus.customername,cus.customerid from customer_info cus,booking b,receipt r,cancellation cncl
where r.customerid=cus.customerid and b.receiptid=r.receiptid and cncl.receiptid=r.receiptid and cncl.status='yes';

select *from customer_info cus,receipt r
where r.customerid=cus.customerid and date > '01/feb/2022' and date < '01/apr/2022';

select * from customer_info;
select distinct c.customername,r.rating from customer_info c,rating r where
r.rating =(select MAX(r.rating) from rating r );

select distinct c.customername,r.rating from customer_info c,rating r where
r.rating =(select MAX(r.rating) from rating r where r.rating < (select  MAX(r.rating) from rating r)and c.customerid=r.customerid);

select * from receipt;

select distinct c.customername,c.contact,r.tax from customer_info c, receipt r
where r.tax =(select MIN(r.tax)from receipt r where r.tax >(select MIN(r.tax) from receipt r)and c.customerid=r.customerid);

select * from receipt where billingcost =(select max(billingcost) from receipt);

select distinct r.rating,r1.billingcost,c.customername from customer_info c, receipt r1,rating r
where r1.billingcost =(select MAX(r1.billingcost) from receipt r1) and ( r.customerid=c.customerid and r1.customerid=c.customerid);

select * from receipt;

select distinct c.customername from receipt r, customer_info c
where (r.customerid = c.customerid and r.billingcost=108020);

select * from booking;

select b.passengername,c.companymoto from flight f,booking b,company c
where(f.companyid = c.companyid and b.flightid = f.flightid and f.flightid = 1603);

select * from company;

/*select c.customername,c1.refundamount from cancellation c1,customer_info c, receipt r 
where c1.refundamount = (select Min(refundamount) from cancellation 
where refundamount =(select top 5(refundamount) from cancellation  order by refundamount asc));*/


select cus.customername,c.refundamount from cancellation c,receipt r,customer_info cus
where c.refundamount = (select min(refundamount) from cancellation where refundamount in
(select top 5(refundamount) from cancellation order by refundamount desc))
and c.receiptid=r.receiptid and r.customerid=cus.customerid;

select c.customerid from customer_info c,receipt r
where (c.customerid in );

select * from rating;

select r.comments, c.dob from receipt r1, rating r, customer_info c
where(r1.customerid	 = c.customerid and r.customerid = c.customerid and r1.cardno='23454311');

select l.locationtype,c.customername from customer_info c,booking b,location l,receipt r
where(b.locationid=l.locationid and b.receiptid = r.receiptid and r.customerid = c.customerid and c.dob='2009-06-01'); 

select r.comments, c.companyname from company c,rating r, receipt r1
where r1.tax =(select min(tax) from receipt where tax in (select top 3(tax) from receipt order by tax desc)) 
and r.companyid=c.companyid and r.customerid = r1.customerid;

select f.departtime,c.customername from customer_info c,flight f,company c1,rating r
where(c.customerid= r.customerid and r.companyid = c1.companyid and r.ratingdate = '2022-06-18' and f.companyid=c1.companyid);

select * from bus;

declare @busid int,@bustype varchar(20)

declare bus_id cursor
for 
select busid,bustype from bus

open bus_id;

fetch next from bus_id
into @busid,@bustype
	while @@FETCH_STATUS=0
	begin
	 