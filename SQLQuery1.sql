/* create Database */
create database tutorial
use tutorial

/* create a table to store the values */
create table Employees(Employee_ID int, Emp_Name varchar(50), Emp_Designation varchar(50))

/* insert record in the table */
insert into Employees values(1, 'Eng Modawi', 'Software Engieneer')

/* insert records in the table using single query */
insert into Employees values
(2, 'Eng Rinad', 'Software Engieneer'),
(3, 'Rude', 'Developer'),
(4, 'PHP', 'Programmer')

/* Display table record */
select * from Employees
select Employee_ID from Employees
select Emp_Name from Employees
select Emp_Name , Emp_Designation from Employees

select * from Employees where Employee_ID=3
select * from Employees where Emp_Name='Eng Rinad'

/* add new column in the table */
alter table Employees add Country varchar(50)
alter table Employees add Gender varchar(15), Phone int


/* update record in the table */
update Employees set Country= 'US'
update Employees set Gender= 'Uknownw', 
Phone=0500

update Employees set Country= 'UK' where Employee_ID=2
update Employees set Emp_Name='Modawi' where Employee_ID=1
update Employees set Emp_Name='Rinad' where Employee_ID=2

/* Delete record */
delete from Employees where Employee_ID=3
delete from Employees where Emp_Name='PHP'

/* delete column */
alter table Employees drop column Gender

/* delete all records in the table */
truncate table Employees

/* Delete the whole table */
drop table Employees

/* rename column */
alter table Employees rename column Emp_Designation to Emp_Des

/* reach records by index number */




