CREATE PROCEDURE UpdateOrder
	@orderID int,
	@tableID INT,
	@menuID INT,
	@staffID INT,
	@orderDate date,
	@status varchar(255)
AS
begin
update Orders
set
	 tableID=@tableID,
	 menuID=@menuID,
	 staffID=@staffID,
	 orderDate=@orderDate,
	 status=@status
	 where orderID=@orderID;
end;