CREATE PROCEDURE UpdateMenuItem
    @MenuID INT,
	@name VARCHAR(255), 
    @Category VARCHAR(255),
    @price float
AS
BEGIN
    UPDATE Menu
    SET 
        name = @name,
        category = @Category,
        price = @price
    WHERE MenuID = @MenuID
end