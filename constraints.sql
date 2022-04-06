/* Constraints
PRIMARY KEY
FOREIGN KEY
NOT NULL
UNIQUE
CHECK
DEFAULT
*/


--Unique
create table programming(ID int primary key identity(1,1), programmingName varchar(50), progmID varchar(50) unique)

insert into programming values('java', 1010)
insert into programming values('C#', 1010) --error
select * from programming

drop table programming


--Not Null and check
create table Employ
(
EmpID int primary key identity(1,1) not null,
EmpName varchar(50) not null,
EmpSalary int check(EmpSalary > 5000)
)

insert into Employ values ('jojo', 4000) --error because of the check
insert into Employ values ('jojo',5001)

select * from Employ
drop table Employ

--Default
create table Employ
(
EmpID int primary key identity(1,1) not null,
EmpName varchar(50) not null,
EmpSalary int default(5000) not null
)

insert into Employ values ('jojo',2000)
select * from Employ

alter table Employ add salary int default(10000) not null
insert into Employ values ('bebe',3000,8)
drop table Employ