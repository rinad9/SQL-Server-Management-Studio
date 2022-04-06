use tutorial


create table Employ
(
EmpID int primary key identity(1,1) not null,
EmpName varchar(50) not null,
EmpSalary int default(5000) not null,
salary int default(10000) not null
)

insert into Employ values ('jojo',2000, 67666)
insert into Employ values ('bebe',5888,25667 )
insert into Employ values ('koko',8432,94322 )
insert into Employ values ('lolo',1632,23257 )
insert into Employ values ('soso',2358,87778 )
insert into Employ values ('nene',9446,25668 )
insert into Employ values ('momo',2466,64256 )

select * from Employ where salary between 20000 and 10000
select * from Employ where salary>= 10000 
select * from Employ where salary>= 10000 and salary <=30000
select * from Employ where salary in (10000, 20000)
select * from Employ where EmpName like '%k%'
select * from Employ where EmpName like '%o%'
select * from Employ where EmpName like 's%'
select * from Employ where EmpName like '%o'
select * from Employ where EmpName like 'l___'
select * from Employ where EmpName like '_e__'

select * from Employ order by EmpName desc
select * from Employ order by EmpName asc

select * from Employ

create view E_table
as
select EmpName, EmpSalary from Employ

select * from E_table

create view Vi_tbl
as 
select EmpName from E_table

select * from Vi_tbl

insert into Vi_tbl values ('Thomas')

update Vi_tbl set EmpName='john' where EmpName='Thomas'
delete Employ where EmpName='john'

