insert into Users (name, phone, accessLevel) values ('Andrew', '547324', 'Admin');
insert into Users (name, phone, accessLevel) values ('John', '574568', 'Manager');
insert into Users (name, phone, accessLevel) values ('Sue', '2134532', 'Staff');


insert into Menu (name,category,price) values ('Gilled Chicken','Grilled', 12);
insert into Menu (name,category,price) values ('Fried Chicken','Fired', 12);
insert into Menu (name,category,price) values ('Fried Rice','Fried', 9);
insert into Menu (name,category,price) values ('Cake','Dessert', 8);

insert into Roles (roleID,name) values (1,'Dishwasher');
insert into Roles (roleID,name) values (2,'Waiter');
insert into Roles (roleID,name) values (3,'Greeter');
insert into Roles (roleID,name) values (4,'Cook');

insert into Staff (name, Salary, roleID,phone) values ('Mary', '12', '2','43542');
insert into Staff (name, Salary, roleID,phone) values ('Bob', '9', '1','432513');
insert into Staff (name, Salary, roleID,phone) values ('Joe', '11', '4','45312');
insert into Staff (name, Salary, roleID,phone) values ('Tom', '10', '3','13453');

insert into Tables (Reserved, Status) values ('Yes', 'Occupied');
insert into Tables (Reserved, Status) values ('No', 'Occupied');
insert into Tables (Reserved, Status) values ('Yes', 'Vacant');
insert into Tables (Reserved, Status) values ('No', 'Vacant');

insert into Orders (tableID,menuID,staffID,userID) values (1,3,2,1);
insert into Orders (tableID,menuID,staffID,userID) values (3,1,2,2);
insert into Orders (tableID,menuID,staffID,userID) values (2,1,2,3);
