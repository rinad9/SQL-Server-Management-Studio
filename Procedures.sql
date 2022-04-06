create table Emp1
(
ID int primary key identity(1,1), 
Emp1Name varchar(50), 
Emp1Des varchar(50), 
salary int
)

select * from Emp1

--Insert Record Stored Procedure
create proc insertProc
(
@Emp1_name varchar(50),
@Emp1_des varchar(50),
@Emp_salary int
)
as
begin
insert into Emp1 values(@Emp1_name, @Emp1_des, @Emp_salary)
end


--Update Record Stored Procedure
create proc updatetProc
(
@ID int,
@Emp1_name varchar(50),
@Emp1_des varchar(50),
@Emp_salary int
)
as
begin
update Emp1 set Emp1Name=@Emp1_name, Emp1Des=@Emp1_des, salary=@Emp_salary where ID=@ID
end


--delete Record Stored Procedure
create proc deleteProc
(
@ID int
)
as
begin
delete from Emp1 where ID=@ID
end

execute insertProc 'Programmer', 'PHP', 50000
execute updatetProc 1,'web developer', 'C#', 250000
execute deleteProc 1

