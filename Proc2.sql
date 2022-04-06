create table country1(coun_ID int primary key identity(1,1), countryName varchar(50))
create table provance1(prov_ID int primary key identity(1,1), provName varchar(50), 
countryID int foreign key references country1(coun_ID))
create table city1(city_ID int primary key identity(1,1), cityName varchar(50), 
pro_ID int foreign key references provance1(prov_ID))


select * from country1
select * from provance1
select * from city1


insert into country1 values ('UK')
insert into provance1 values ('UK', 1)
insert into city1 values ('UK', 1)


create proc store
(
@countryNa varchar(50),
@provNa varchar(50),
@cityNa varchar(50)
)
as
begin

insert into country1 values(@countryNa)
declare @ProvanceID int = @@identity
insert into provance1 values(@provNa, @ProvanceID)
declare @cityID int = @@identity
insert into city1 values(@cityNa, @cityID)

end


exec store 'USA', 'USA', 'USA'


create table colors
(
col_ID int primary key identity(1,1), color_name varchar(50), app# int
)

insert into colors values('red', 3)

select * from colors

--Trigger
create trigger Msg 
on colors for insert
as
begin
print 'your record has been saved in the database'
end

insert into colors values('blue')

drop table colors

--Trigger2
alter trigger Msg 
on colors for insert
as
if(select app# from inserted)>5
begin
	print 'your amount exceeded'
	rollback transaction
end
else
begin
	print'your record has been stored'
end

insert into colors values('blue', 7)
insert into colors values('green', 9) --error
insert into colors values('green', 4)

drop trigger Msg

drop table colors
