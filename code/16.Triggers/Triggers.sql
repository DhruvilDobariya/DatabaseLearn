-- Create Database TriggerLearn;
-- use TriggerLearn;

-- Create Table Product
-- (
-- 	ProductId int not null auto_increment,
--     ProductName varchar(50) not null,
--     Primary Key(ProductId)
-- );

-- Create Table UserLog
-- (
-- 	LogId int not null auto_increment,
--     Activity varchar(50) not null,
--     Description varchar(250) not null,
--     CreationDate DateTime Default Current_Timestamp(),
--     Primary Key(LogId)
-- );

-- Delimiter //
-- Create Trigger BeforeInserProduct
-- Before Insert On Product
-- For each row 
-- Begin
-- 	Insert into UserLog (Activity, Description) values ("Add", Concat("User starting to add new ", + new.ProductName));
-- End //
-- Delimiter ;

-- Delimiter //
-- Create Trigger AfterInserProduct
-- After Insert On Product
-- For each row 
-- Begin
-- 	Insert into UserLog (Activity, Description) values ("Add", Concat(new.ProductName, " added successfully by User"));
-- End //
-- Delimiter ;

-- Delimiter //
-- Create Trigger BeforeUpdateProduct
-- Before Update On Product
-- For each row 
-- Begin
-- 	Insert into UserLog (Activity, Description) values ("Update", Concat("User starting to update ", + old.ProductName, " with " , new.ProductName));
-- End //
-- Delimiter ;

-- Delimiter //
-- Create Trigger AfterUpdateProduct
-- After Update On Product
-- For each row 
-- Begin
-- 	Insert into UserLog (Activity, Description) values ("Update", Concat(old.ProductName, " updated successfully with ", new.ProductName ," by User"));
-- End //
-- Delimiter ;

-- Drop Trigger AfterInserProduct;
-- Drop Trigger AfterUpdateProduct;
-- Drop Trigger BeforeInserProduct;
-- Drop Trigger BeforeUpdateProduct;

Insert into Product (ProductName) value ("HP Laptop");
Update Product 
set ProductName = "Dell Laptop"
Where ProductId = 1;

Truncate Product;
Truncate UserLog;

-- old table doesn't exist in Insert event only new table exist. 
-- old and new both exist in update event.
-- new table doesn't exist in delete event, but old table exist.

