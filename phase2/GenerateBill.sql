create procedure GenerateBill
as
begin
select b.* from Bills b

inner join orders o on b.OrderID=o.OrderID
where o.status='complete';
end;