/* DBMS Database managment System */
create table Emp
(
ID int, Emp_name varchar(50), 
Emp_Des varchar(50)
)

insert into Emp values(1, 'Programmer', 'C#')
select * from Emp

/* RDBMS Reational Database Managment System */
create table student
(
st_ID int primary key identity(100,2),
st_name varchar(50),
st_country varchar(50)
)

insert into student values( 'Rinad', 'US')
insert into student values( 'Modawi', 'UK')
select * from student


drop table student
drop table Emp



