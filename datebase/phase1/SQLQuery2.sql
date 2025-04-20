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


select menuID, category from Menu
order by category;

select tableID, Status
from Tables;

select OrderID, orderDate
from Orders
order by orderDate desc;