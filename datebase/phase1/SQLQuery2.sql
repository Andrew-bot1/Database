create table Staff (
	staffID int IDENTITY(1,1) PRIMARY KEY,
	name varchar(255),
	role varchar(255),
	accessLevel varchar(255)
);

create table Customers (
	customerID int IDENTITY(1,1) PRIMARY KEY,
	name varchar(255),
	phone varchar(255)
);

create table Menu (
	menuID int IDENTITY(1,1) PRIMARY KEY,
	name varchar(255),
	category varchar(255),
	price float
);

create table Tables (
	tableID int IDENTITY(1,1) PRIMARY KEY,
	Reserved varchar(255),
	Status varchar(255)
);

create table Orders (
	OrderID int IDENTITY(1,1) PRIMARY KEY,
	tableID int FOREIGN KEY REFERENCES Tables(tableID),
	menuID int FOREIGN KEY REFERENCES Menu(menuID),
	staffID int FOREIGN KEY REFERENCES Staff(staffID),
	customerID int FOREIGN KEY REFERENCES Customers(customerID),
	orderDate date default getdate()
);

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



select menuID, category from Menu
order by category;

select tableID, Status
from Tables;

select OrderID, orderDate
from Orders
order by orderDate desc;
