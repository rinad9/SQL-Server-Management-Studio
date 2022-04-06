create table colors
(
col_ID int primary key identity(1,1), color_name varchar(50), app# int
)

insert into colors values('red', 3)
insert into colors values('blue', 7)
insert into colors values('green', 9)
insert into colors values('black', 2)
insert into colors values('yellow', 4)
insert into colors values('brown', 5)

select * from colors

select MAX (app#) from colors 
select min (app#) from colors 
select avg (app#) from colors 

select top 3(color_name) from colors
select DATALENGTH(color_name) from colors

select COUNT(*) from colors
select upper(color_name) from colors
select lower(color_name) from colors

select UPPER((select color_name from colors where col_ID=1))
select lower((select color_name from colors where col_ID=3))

select GETDATE()
select SYSDATETIME()
select SYSTEM_USER
select YEAR(getdate())
select month(getdate())
select day(getdate())


