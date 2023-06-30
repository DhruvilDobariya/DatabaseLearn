-- Delimiter //
-- Create Function CreateStudentList()
-- Returns varchar(4000) 
-- Begin
-- 	Declare studentList varchar(4000) Default ""; # must give default value "", othter wise it's take by default null, so if we concate Null with anything it gives Null.
--     Declare student varchar(50) Default "";
--     Declare finished int Default 0;
--     
--     # Declare cursor for student name
--     Declare cursorStudent Cursor 
-- 		For Select FirstName From Student;
--         
-- 	# Declare Not Found handler
--     Declare Continue Handler
-- 		For Not Found
-- 			Set finished = 1;
--             
-- 	Open cursorStudent;
--     getStudent: Loop
-- 		Fetch cursorStudent into student;
--         If finished = 1 Then
-- 			Leave getStudent;
-- 		End If;
--         Set studentList = Concat(studentList,", ", student);
-- 	End Loop getStudent;
--     Close cursorStudent;
--     
--     Return studentList;
-- End //
-- Delimiter ;

-- Select CreateStudentList();

Delimiter //
Create Procedure CreateStudentList
(
	InOut studentList varchar(4000) # if we set Out parameter then it don't take any value from out side so by default it become Null and concat any thing with Null is gives Null, So we must set InOut parameter and give value "".
)
Begin
    Declare student varchar(50) Default "";
    Declare finished int Default 0;
    
    # Declare cursor for student name
    Declare cursorStudent Cursor 
		For Select FirstName From Student;
        
	# Declare Not Found handler
    Declare Continue Handler
		For Not Found
			Set finished = 1;
            
	Open cursorStudent;
    getStudent: Loop
		Fetch cursorStudent into student;
        #Select student; 
        #Select finished;
        If finished = 1 Then
			Leave getStudent;
		End If;
        Set studentList = Concat(student,", ", studentList);
        #Select studentList;
	End Loop getStudent;
    Close cursorStudent;
End //
Delimiter ;

Set @outputList = "";
Call CreateStudentList(@outputList);
Select @outputList;
