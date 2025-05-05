

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



select menuID, category from Menu
order by category;

select tableID, Status
from Tables;

select OrderID, orderDate
from Orders
order by orderDate desc;