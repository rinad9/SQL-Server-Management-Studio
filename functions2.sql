select SQUARE(5) as multible

create function addition(@a int, @b int)
returns int
as
begin
declare @result int =@a+@b
return @result
end

create function multible(@a int, @b int)
returns int
as
begin
declare @result int =@a*@b
return @result
end

create function div(@a int, @b int)
returns int
as
begin
declare @result int =@a/@b
return @result
end

create function sub(@a int, @b int)
returns int
as
begin
declare @result int =@a-@b
return @result
end

select dbo.addition(10,5) as adding
select dbo.multible(10,5) as multible
select dbo.div(10,5) as division
select dbo.sub(10,5) as substraction

drop function addition
