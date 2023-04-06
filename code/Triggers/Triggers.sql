-- Create Trigger 
-- 	CalculateMarkTrigger
-- After 
-- 	Insert
-- On
-- 	result
-- For each row
-- Declare
-- 	@TotalMark Decimal(5,2)
-- Begin
-- 	@ToTalMark := result.Maths + result.Physics + result.Chemistry,
--     ser user.Total = @TotalMark
-- End

Create Trigger 
	CalculateMarkTrigger
After 
	Insert
On
	result
For each row
Set result.Total = result.Maths + result.Physics + result.Chemistry;    