-- -- Create Database JoinLearn;
-- -- use JoinLearn;

-- -- create table Collage (
-- --     CollageId INT Not Null Auto_Increment,
-- -- 	Name VARCHAR(50),
-- --     Primary Key(CollageId)
-- -- );

-- -- insert into Collage (Name) VALUES
-- -- ("Darshan"),("Marwadi"),("VVP"),("RK"),("Atmiya"),("LD"),("LJ");

-- -- create table Student (
-- --     StudentId INT Not Null Auto_Increment,
-- -- 	FirstName VARCHAR(50),
-- -- 	LastName VARCHAR(50),
-- -- 	Email VARCHAR(50),
-- -- 	Gender VARCHAR(50),
-- -- 	CollageId INT,
-- --     Primary Key(StudentId),
-- --     Foreign Key(CollageId) References Collage(CollageId)
-- -- );
-- -- insert into Student (FirstName, LastName, Email, Gender, CollageId) values ('Ty', 'Coatham', 'tcoatham0@photobucket.com', 'Polygender', 3);
-- -- insert into Student (FirstName, LastName, Email, Gender) values ('Sadye', 'Hatley', 'shatley1@1688.com', 'Female');
-- -- insert into Student (FirstName, LastName, Email, Gender, CollageId) values ('Aldwin', 'Supple', 'asupple2@bing.com', 'Male', 5);
-- -- insert into Student (FirstName, LastName, Email, Gender, CollageId) values ('Darlleen', 'Rosenfelder', 'drosenfelder3@issuu.com', 'Female', 3);
-- -- insert into Student (FirstName, LastName, Email, Gender, CollageId) values ('Sasha', 'McAlroy', 'smcalroy4@reverbnation.com', 'Female', 1);
-- -- insert into Student (FirstName, LastName, Email, Gender, CollageId) values ('Rodney', 'Vasilenko', 'rvasilenko5@usa.gov', 'Male', 2);
-- -- insert into Student (FirstName, LastName, Email, Gender, CollageId) values ('Shell', 'Markovich', 'smarkovich6@free.fr', 'Bigender', 1);
-- -- insert into Student (FirstName, LastName, Email, Gender, CollageId) values ('Davon', 'Maffucci', 'dmaffucci7@springer.com', 'Male', 2);
-- -- insert into Student (FirstName, LastName, Email, Gender, CollageId) values ('Gasparo', 'Sattin', 'gsattin8@dropbox.com', 'Male', 1);
-- -- insert into Student (FirstName, LastName, Email, Gender, CollageId) values ('Sibeal', 'Bayston', 'sbayston9@weather.com', 'Female', 3);
-- -- insert into Student (FirstName, LastName, Email, Gender, CollageId) values ('Rayna', 'Squelch', 'rsquelcha@multiply.com', 'Female', 2);
-- -- insert into Student (FirstName, LastName, Email, Gender) values ('Candi', 'Ong', 'congb@tamu.edu', 'Female');
-- -- insert into Student (FirstName, LastName, Email, Gender, CollageId) values ('Sheba', 'Habbert', 'shabbertc@yellowbook.com', 'Female', 5);
-- -- insert into Student (FirstName, LastName, Email, Gender, CollageId) values ('Corrina', 'Blackburne', 'cblackburned@amazon.com', 'Female', 1);
-- -- insert into Student (FirstName, LastName, Email, Gender, CollageId) values ('Darlene', 'Clother', 'dclothere@canalblog.com', 'Female', 4);
-- -- insert into Student (FirstName, LastName, Email, Gender, CollageId) values ('Samuel', 'McReedy', 'smcreedyf@mashable.com', 'Male', 3);
-- -- insert into Student (FirstName, LastName, Email, Gender, CollageId) values ('Willie', 'Comford', 'wcomfordg@cnbc.com', 'Male', 2);
-- -- insert into Student (FirstName, LastName, Email, Gender, CollageId) values ('Sherill', 'Petts', 'spettsh@gov.uk', 'Female', 5);
-- -- insert into Student (FirstName, LastName, Email, Gender, CollageId) values ('Nobie', 'Slessor', 'nslessori@cbsnews.com', 'Genderqueer', 2);
-- -- insert into Student (FirstName, LastName, Email, Gender, CollageId) values ('Cairistiona', 'Booton', 'cbootonj@flavors.me', 'Female', 2);



-- -- Full Outer Join 
-- Select * from Student
-- Full Join Collage ON
-- Collage.CollageId = Student.CollageId;

-- -- Left Outer Join
-- Select * from Student
-- Left Join Collage ON
-- Collage.CollageId = Student.CollageId;

-- -- Right Outer Join
-- Select * from Student
-- Right Join Collage ON
-- Collage.CollageId = Student.CollageId;

-- -- Inner Join
-- Select * from Student
-- Inner Join Collage ON
-- Collage.CollageId = Student.CollageId;

-- -- Select * from tablename1
-- -- Inner Join tablename2 ON
-- -- tablename2.refrencecolumn = tablename1.refrencecolumn;