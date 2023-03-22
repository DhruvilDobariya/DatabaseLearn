-- Create View
Create View StudentView 
AS 
Select StudentId, FirstName, LastName, Name from Student
Inner Join Collage ON
Collage.CollageId = Student.CollageId;

-- Alter View
Alter View StudentView
As
Select StudentId, FirstName, LastName, Name as CollageName from Student
Inner Join Collage ON
Collage.CollageId = Student.CollageId;

-- Rename View
Rename Table StudentView
to StudentWithCollageNameView

-- Select View
Select * From StudentWithCollageNameView

-- Drop View
Drop View StudentWithCollageNameView