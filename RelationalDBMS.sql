use tutorial

--Main table car
create table car(car_ID int primary key identity(1,1), car_name varchar(50))
select * from car
insert into car values('BMW'), ('Audi'), ('Ferrari')

--Another Regestration table
create table Reg(r_ID int primary key identity(1,1), Reg# varchar(50), 
car_Reg_ID int foreign key references car(car_ID))
select * from Reg
insert into Reg values('AUK-2555', 1)


--Joints
select Reg.r_ID, Reg.Reg#, car.car_name 
from Reg inner join car 
on Reg.car_Reg_ID=car.car_ID

select Reg.r_ID, Reg.Reg#, car.car_name 
from Reg left join car 
on Reg.car_Reg_ID=car.car_ID

select Reg.r_ID, Reg.Reg#, car.car_name 
from Reg right join car 
on Reg.car_Reg_ID=car.car_ID


create table country(coun_ID int primary key identity(1,1), countryName varchar(50))
create table provance(prov_ID int primary key identity(1,1), provName varchar(50), 
countryID int foreign key references country(coun_ID))
create table city(city_ID int primary key identity(1,1), cityName varchar(50), 
pro_ID int foreign key references provance(prov_ID))


select * from country
select * from provance
select * from city


insert into country values ('UK')
insert into provance values ('UK', 2)
insert into city values ('UK', 2)


create table student_Bio(st_ID int primary key identity(1,1), 
st_Name varchar(50), st_roll# varchar(50),
con_id int foreign key references country(coun_ID),
pro_id int foreign key references provance(prov_ID),
cty_id int foreign key references city(city_ID))

select * from student_Bio

insert into student_Bio values ('Programmer', '13343', 1,1,1)
insert into student_Bio values ('Web Developer', '346667', 2,2,2)


select student_Bio.st_ID, student_Bio.st_Name, student_Bio.st_roll#,
country.countryName, provance.provName, city.cityName
from student_Bio
inner join country
on
student_Bio.con_id=country.coun_ID
inner join provance
on
student_Bio.pro_id=provance.prov_ID
inner join city
on 
student_Bio.cty_id=city.city_ID
