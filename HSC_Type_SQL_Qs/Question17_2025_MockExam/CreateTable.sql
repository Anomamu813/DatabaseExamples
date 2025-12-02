-- Script to create table(s). Change as you wish.
create table Suppliers(
 SupplierID TEXT PRIMARY KEY,
 Name CHARFIELD(25)
);

create table Products(
 ProductID TEXT PRIMARY KEY,
 Name CHARFIELD(25),
 Price INTEGER,
 Mass INTEGER,
 Producer CHARFIELD(25),
 Quantity INTEGER,
 SupplierID TEXT REFERENCES Suppliers(SupplierID)
);
