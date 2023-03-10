-- Example 1:
SELECT * From Student
Where RollNo IN
(
    SELECT RollNo FROM Result
    WHERE  Grade = "A"
);
-- Here we have two table and We want to get those student who beloges to the grade A.
-- Student Table{ Id, RollNo, Name, ContactNo}
-- Result Table{ Id, RollNo, Grade}

-- Example 2:
-- Given: 
-- We have Two Division Table
-- 1) DivisionBCX{Id, RollNo, Name}
-- 2) DivisionBCW{Id, RollNo, Name}
-- Problem: We want to put one student from DivisionDCW to DivisionBCX which RollNo have 102.
INSERT into DivisionBCX(
    SELECT * FROM DivisionBCW
    Where RollNo = 102
);

-- Example 3:
-- Given: 
-- We have Two Table
-- 1) City{CityId, City, StateId}
-- 2) State{StateId, State}
-- Problem: When we delete Gujarat then it's automatic delete all the city of Gujarat State
DELETE From City
Where StateId IN(
    Select StateId From State
    Where State = "Gujarat"
);
DELETE FROM State
Where State = "Gujarat";

-- Example 4:
-- Given: 
-- We have Two Table
-- 1) Student Table{ Id, RollNo, Name, Division}
-- 2) Result Table{ Id, RollNo, Grade}
-- Problem: We want to promote student from their division to BCX division which student get A grade.
UPDATE
    SET Division = "BCX"
Where RollNo IN(
    SELECT RollNo From Result
    Where Grade = "A"
);
