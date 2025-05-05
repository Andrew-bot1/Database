CREATE PROCEDURE CreateOrder
	@tableID INT,
	@menuID INT,
	@staffID INT,
	@orderDate date,
	@status varchar(255)
AS
begin
	 insert into Orders  (
	 tableID,
	 menuID,
	 staffID,
	 orderDate,
	 status)
	 values (@tableID,
	 @menuID,
	 @staffID,
	 @orderDate,
	 @status)
end;
