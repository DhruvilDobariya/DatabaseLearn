-- Create Database DMSDemo;
-- use DMSDemo;

-- Create Table YMP02D
-- (
-- 	P02DF01 int not null auto_increment,
--     P02DF02 varchar(250) not null,
--     P02DF03 int not null default 0,
--     Primary Key(P02DF01)
-- );

Create Table YMP01D
(
	P01DC01 int not null,
    P01DF01 int not null,
    P01DF02 varchar(250) not null,
    P01DF03 int not null
);

-- Insert into YMP02D (P02DF02) values 
-- ("Dell Laptop"),("HP Laptop"),("i7 12th Gen"),("RTX 3090");

Delimiter //
Create Procedure sp_StockCal
(
	In p_P01DF01 int, #Product Id
    In p_P01DF03 int #Add Quantity
)
Begin
	# Declare Variables
	Declare v_P02DF03 int Default 0; # old quantity
    
    # Get old quantity value
    Select 
		P02DF03
	From
		YMP02D
	Where
		P02DF01 = p_P01DF01
	Into 
		v_P02DF03;
        
	# Update quantity value
	Update YMP02D set
		P02DF03 = (v_P02DF03 + p_P01DF03)
	Where 
		P02DF01 = p_P01DF01;
End //
Delimiter ;

-- Call sp_StockCal(1, 6) 

Delimiter //
Create Trigger tr_AfterAddStock
After Insert on YMP01D
For Each Row
Begin
	# Update Stock
	Call sp_StockCal(new.P01DF01, new.P01DF03);
End //
Delimiter ;

Insert into YMP01D (P01DC01, P01DF01, P01DF02, P01DF03)
values (2,1, "Dell Laptop", 7);

Insert into YMP01D (P01DC01, P01DF01, P01DF02, P01DF03)
values (1,2, "HP Laptop", 7);