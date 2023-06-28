-- Create Database FunctionLearn;
-- use FunctionLearn;
-- SET GLOBAL log_bin_trust_function_creators = 1;

-- Delimiter //
-- Create Function ShowMessage()
-- Returns varchar(50)
-- Begin
-- 	Return "Hello World";
-- End //
-- Delimiter ;

-- Select ShowMessage() as "Message"; 
-- Drop Function ShowMessage;

-- Delimiter //
-- Create Function Addition
-- (
-- 	a int,
--  b int
-- )
-- Returns int
-- Begin
-- 	Declare total int default 0;
--     Set total = a + b;
--     Return total;
-- End //
-- Delimiter ;

-- Select Addition(2,3);

-- Delimiter //
-- Create Function CalculateYear(dob Date)
-- Returns int
-- Begin
-- 	Declare currentYear int;
--     Select Current_Date() into currentYear;
--     Return (Year(currentYear) - Year(dob));
-- End //
-- Delimiter ;

-- Select CalculateYear("2002-04-04") As Age;

-- Show All functions 
Show Function Status
Where db = "FunctionLearn";


