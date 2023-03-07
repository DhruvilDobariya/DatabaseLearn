-- Select all fields
-- Select * From Student;

-- select specific fields
-- Select Id, Name, Email From Student;

-- Where condition
-- Select * from Student
-- Where Id = 1;

-- Select * from Student
-- Where Id != 1;
-- OR
-- Where Id <> 1;

-- SELECT * from Student
-- Where RollNo > 5 and RollNo <= 10

-- SELECT * from Student
-- Where RollNo = 5 or RollNo = 10

-- SELECT * from Student
-- Where RollNo In(5, 10, 15, 20)

-- SELECT * from Student
-- Where RollNo BETWEEN 5 and 10 
-- Between include uper bound and lower bound

-- SELECT * from Student
-- Where RollNo not BETWEEN 5 and 10

-- Select * from Student
-- Where Email is not Null; 

-- Lilke
-- (_) represent one character
-- (%) represent more the one character

-- Select * from Student
-- Where RollNo like "1_";

-- Select * from Student
-- Where Name like "a%";
-- starting name from a

-- Select * from Student
-- Where Name like "%e";
-- starting name from e

-- Select * from Student
-- Where Name like "a%e";
-- starting name from a and ending from b

-- orderby
-- Select * from Student
-- ORDER BY Name, Email, RollNo, Id;

-- Select * from Student
-- ORDER BY Name Desc;

-- Select DISTINCT RollNo from Student

-- Select Top 5 * from Student;
-- SELECT * from Student
-- LIMIT 5;

Select Name as Username from Student;