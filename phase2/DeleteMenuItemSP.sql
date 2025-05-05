
CREATE PROCEDURE DeleteMenuItem
    @MenuID INT,
	@name VARCHAR(255), 
    @Category VARCHAR(255),
    @price float
AS
begin
	delete from menu
	where menuID=@MenuID
end