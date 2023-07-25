CREATE DATABASE school;
CREATE TABLE dept(
    did      INT       PRIMARY KEY,
    dept_name varchar(10) not NULL  UNIQUE
)
CREATE TABLE students (
    SID     int     PRIMARY KEY,
    s_name VARCHAR(20) not NULL,
    DID     int     NOT NULl foreign key references dept(did),
    DOB     DATE    not NULL,
    mobile int,
    address VARCHAR(10),
    gender VARCHAR     CHECK(gender='m' or gender='f')
)
CREATE TABLE employee1
(
    eid     int      PRIMARY KEY,
    ename   VARCHAR(10)     not NULL,
    did     INT         NOT NULL foreign key references dept(did),
    salary     money        not NULL,
    gender    VARCHAR(1)    not NULL CHECK(gender='m' or gender='f'),
    city        VARCHAR(10)     NULL,
    mobile      int     NULL
)

INSERT into dept VALUES(1,'CSE');
INSERT into dept VALUES(2,'EEE');
INSERT into dept VALUES(3,'EIE');
INSERT into dept VALUES(4,'CSSE');
INSERT into dept VALUES(5,'CSBS');
INSERT into dept VALUES(6,'CSDS');
INSERT into dept VALUES(7,'MECH');
INSERT into dept VALUES(8,'CIVIL');

select * from dept;

insert into students values(1501,'rithwik',1,'2002-1-12',123456789,'tpt','m');
insert into students values(1502,'satish',2,'2002-11-15',123436789,'chennai','m');
insert into students values(1503,'mounika',1,'2002-3-14',113456789,'tpt','f');
insert into students values(1504,'phani',1,'2001-3-17',123456739,'hyd','m');
insert into students values(1505,'charitha',3,'2001-6-19',123496789,'hyd','f');
insert into students values(1506,'chinna',4,'2003-4-18',123454789,'banglore','m');
insert into students values(1507,'mini',4,'2002-4-27',123456889,'tpt','f');
insert into students values(1508,'harika',7,'2001-7-22',126556789,'chennai','f');
insert into students values(1509,'keerthi',8,'2002-2-25',123459789,'chennai','f');
insert into students values(1510,'sampurna',3,'2001-4-26',223456789,'tpt','f');
insert into students values(1511,'dilli',2,'2003-1-24',183456789,'hyd','m');
insert into students values(1512,'aarthi',4,'2002-5-13',123496789,'tpt','f');
insert into students values(1513,'Aakash',1,'2001-4-22',123451789,'chennai','m');
insert into students values(1514,'sai priya',8,'2001-3-22',183456789,'tpt','f');
insert into students values(1515,'shekar',1,'2002-11-11',123156789,'hyd','m');
insert into students values(1516,'samyuktha',8,'2002-11-22',123456788,'chennai','f');
insert into students values(1517,'surya',5,'2001-1-1',123456189,'tpt','m');
insert into students values(1518,'govardhan',6,'2002-1-12',126456789,'chennai','m');
insert into students values(1519,'dsasd',2,'2003-12-12',121456789,'tpt','m');
insert into students values(1520,'tree',1,'2003-4-18',123456739,'banglore','f');
insert into students values(1521,'rkq',1,'2002-11-22',333567892,'tpt','m');
insert into students values(1522,'ewwe',7,'2001-4-25',124456789,'banglore','f');
insert into students values(1523,'riwq',1,'2002-1-11',123456729,'tpt','m');
insert into students values(1524,'riwika',5,'2001-4-13',143456789,'chennai','m');
insert into students values(1525,'fdsa',7,'2003-4-14',123456789,'tpt','m');
insert into students values(1526,'ritk',8,'2001-1-12',123456289,'tpt','f');
insert into students values(1527,'riik',8,'2002-1-12',123456789,'tpt','f');
insert into students values(1528,'rithk',3,'2003-12-12',136456789,'chennai','m');
insert into students values(1529,'rit',1,'2002-1-18',123456783,'tpt','f');
insert into students values(1530,'ert',1,'2001-5-22',123656789,'hyd','m');

select * from students;
insert into employee1 values(121,'faf',2,35000.00,'m','banglore',123456789)
insert into employee1 values(122,'virat',1,100000.00,'m','banglore',132456789);
insert into employee1 values(123,'Anushka',1,95000.00,'f','banglore',123446789);
insert into employee1 values(124,'sachin',5,55000.00,'m','chennai',123456788);
insert into employee1 values(125,'abd',1,95000.00,'m','banglore',123766789);
insert into employee1 values(126,'rohith',7,65000.00,'m','mumbai',125456789);
insert into employee1 values(127,'bravo',8,75000.00,'m','hyd',176456789);
insert into employee1 values(128,'brn',3,38000.00,'f','tpt',127856789);
insert into employee1 values(129,'fhg',6,80000.00,'f','hyd',123534789);
insert into employee1 values(130,'jgk',6,900000.00,'m','tpt',763456789);
select * from employee1;
select s_name from students where (DID=4);
update students set address = 'mumbai' where(address='hyd' and DID =1); 
select * from students;
update students set mobile = 333333333 where(SID=1518);
select mobile from students where(SID=1518);
alter table students
add bloodgroup varchar(5) null;
select * from students;

alter table employee1
add designation varchar(10) null;
select * from employee1;
delete from students where address = 'chennai';
select * from students;
update employee1 set designation = 'proffesor' where(eid=121);
update employee1 set designation = 'proffesor' where(eid=122);
update employee1 set designation = 'proffesor' where(eid=123);
update employee1 set designation = 'asst.prof' where(eid=124);
update employee1 set designation = 'asct.prof' where(eid=125);
update employee1 set designation = 'asst.prof' where(eid=126);
update employee1 set designation = 'asct.prof' where(eid=127);
update employee1 set designation = 'proffesor' where(eid=128);
update employee1 set designation = 'asst.prof' where(eid=129);
update employee1 set designation = 'proffesor' where(eid=130);

select * from employee1;
update employee1 set salary = 85000 where(designation='asct.prof');
select * from employee1;
select ename from employee1 where(city='tpt' and did=4);
update employee1 set did = 4 where(did=1);
select * from employee1;
select sum(salary) from employee1 where(did=4);
select ename from employee1 where(salary>50000);
CREATE VIEW
[student CSSE] as
select sid,s_name,address from students where DID=4;
select * from [student CSSE];
select mobile from employee1;
alter table employee1
drop column mobile;
select * from employee1;
alter table students 
alter column DOB datetime null;
select * from students;
CREATE VIEW 
[stud_name] as 
select eid,ename from employee1 where(eid>126);
select * from stud_name;
update stud_name set ename='king_kohli' where(eid=127);
drop view [stud_name];
select COUNT(s_name) from students where(DID=4);
alter table students
add age int check(age>22 and age<100);
alter table students
drop column age;
alter table employee1
add age int check(age>22 and age<100);
update employee1 set age=23 where(eid=121);
update employee1 set age=33 where(eid=122);
update employee1 set age=43 where(eid=123);
update employee1 set age=53 where(eid=124);
update employee1 set age=63 where(eid=125);
update employee1 set age=73 where(eid=126);
update employee1 set age=83 where(eid=127);
update employee1 set age=93 where(eid=128);
update employee1 set age=98 where(eid=129);
update employee1 set age=72 where(eid=130);
select * from employee1;
select ename from employee1 where(did=4 and age>30 and age<40);
select AVG(salary) as 'avg' from employee1 where(did=4);
select eid,ename,dept_name from employee1 as e, dept as d where e.salary>40000 and e.city='tpt' and e.did=d.did;
create table bookbank
(
	sno		int		identity(1,1),
	bid     int  primary key,
	bname	varchar(30)	not null,
	quantity int	null
)
insert into bookbank values(1,'moom',5);
insert into bookbank values(6,'m%om',4);
insert into bookbank values(3,'m!om',6);
insert into bookbank values(4,'m@om',8);
insert into bookbank values(5,'m#om',9);
select COUNT(eid) from employee1 where(age>35 and did=4);
update students set bloodgroup='ab+' where SID = 1501;
update students set bloodgroup='ab+' where SID = 1502;
update students set bloodgroup='o+' where SID = 1503;
update students set bloodgroup='ab-' where SID = 1504;
update students set bloodgroup='ab+' where SID = 1505;
update students set bloodgroup='ab-' where SID = 1506;
update students set bloodgroup='o+' where SID = 1507;
update students set bloodgroup='o+' where SID = 1508;
update students set bloodgroup='ab+' where SID = 1509;
update students set bloodgroup='ab-' where SID = 1510;
update students set bloodgroup='ab+' where SID = 1511;
update students set bloodgroup='ab+' where SID = 1512;


select sid,s_name from students where(bloodgroup='ab+' and gender='m');
