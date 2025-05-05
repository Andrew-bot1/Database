CREATE PROCEDURE GetOrderHistory
	@orderDate date
AS
begin
	 select * from orders
	 where orderDate=@orderDate;
end;