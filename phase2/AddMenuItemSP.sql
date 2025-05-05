CREATE PROCEDURE AddMenuItem
	@name varchar(255),
	@category varchar(255),
	@price float
AS
begin
	 insert into Menu (
	 name,
	 category,
	 price)
	 values (@name,
	 @category,
	 @price)
end;



