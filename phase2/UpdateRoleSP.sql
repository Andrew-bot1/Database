CREATE PROCEDURE UpdateRolee
	@staffID int,
	@role varchar(255)
AS
begin
update Staff
set
	 role=@role,
	 where staffID=@staffID;
end;