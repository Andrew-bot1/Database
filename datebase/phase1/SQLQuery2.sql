CREATE TABLE Bills (
    BillID int NOT NULL PRIMARY KEY,
    OrderID int,
    Total int
);
GO

CREATE TABLE Menu (
    menuID int IDENTITY(1,1) NOT NULL primary key,
    name varchar(255),
    category varchar(255),
    price float
);
GO

CREATE TABLE Orders (
    OrderID int IDENTITY(1,1) NOT NULL PRIMARY KEY,
    tableID int,
    menuID int,
    staffID int,
    userID int,
    orderDate date,
    status varchar(255)
);
GO

CREATE TABLE Reservations (
    ReservationId int not null PRIMARY KEY,
    tableId int,
    reservation_date date
);
GO

CREATE TABLE Roles (
    roleID int NOT NULL PRIMARY KEY,
    name varchar(200) 
);
GO

create TABLE Staff (
    staffID int IDENTITY(1,1) not NULL PRIMARY KEY,
    name varchar(255),
    Salary float,
    roleID int,
    phone int
);
GO

CREATE TABLE Tables (
    tableID int IDENTITY(1,1) not NULL PRIMARY KEY,
    Reserved varchar(255),
    Status varchar(255)
);
GO

CREATE TABLE Users (
    UserID int IDENTITY(1,1) not NULL PRIMARY KEY,
    name varchar(255),
    phone varchar(255),
    accessLevel varchar(255)
);
GO

ALTER TABLE Orders ADD DEFAULT (GETDATE()) FOR orderDate;
GO

ALTER TABLE Bills ADD FOREIGN KEY (OrderID) REFERENCES Orders (OrderID);
GO

ALTER TABLE Orders ADD FOREIGN KEY (userID) REFERENCES Users (UserID);
GO

ALTER TABLE Orders ADD FOREIGN KEY (menuID) REFERENCES Menu (menuID);
GO

ALTER TABLE Orders ADD FOREIGN KEY (staffID) REFERENCES Staff (staffID);
GO

ALTER TABLE Orders ADD FOREIGN KEY (tableID) REFERENCES Tables (tableID);
GO
 
ALTER TABLE Reservations ADD FOREIGN KEY (tableId)  REFERENCES Tables (tableID);
GO


ALTER TABLE Staff ADD FOREIGN KEY (RoleID) REFERENCES Roles (roleID);
GO

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
