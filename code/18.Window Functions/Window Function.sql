SELECT * FROM windowfunctionlearn.mark;

Insert into Mark 
	(Name, Mark)
    values 
    ('Jenil', 200), 
    ("Dhruvil", 200), 
    ("Jenil", 150), 
    ("Bhargav", 250), 
    ("Dhaval", 300), 
    ("Dhruvil", 210), 
    ("Dhruv", 500), 
    ("Jenil", 450), 
    ("Bhargav", 100),
    ("Dhruvil", 100);
    
Select 
	Name,
    Mark,
    SUM(Mark) OVER(Partition By `Name`) As SUM,
    MIN(Mark) OVER(Partition By `Name`) As MIN,
    MAX(Mark) OVER(Partition By `Name`) As MAX,
    COUNT(Mark) OVER(Partition By `Name`) As COUNT,
    AVG(Mark) OVER(Partition By `Name`) As AVG
From
	Mark;
-- We canalso write like this
Select 
	Name,
    Mark,
    SUM(Mark) OVER w As SUM,
    MIN(Mark) OVER w As MIN,
    MAX(Mark) OVER w As MAX,
    COUNT(Mark) OVER w As COUNT,
    AVG(Mark) OVER w As AVG
From
	Mark
Window w As (Partition By `Name`);

Select 
	Name,
    Mark,
    Row_Number() Over(Order By Mark) As `Row_Number`,
    Rank() Over(Order By Mark) As `Rank`,
    Dense_Rank() Over(Order By Mark) As `Dense_Rank`,
    Percent_Rank() Over(Order By Mark) As `Parcent_Rank`, -- ((rowNo - 1)/(No.ofRow - 1))
    Cume_Dist() Over(Order By Mark) As `Cume_Dist` -- camulative distribution for frame
From 
	Mark;

Select 
	Name,
    Mark,
    First_Value(Mark) Over(Order By Mark) As `First_Value`,
    Last_Value(Mark) Over(Order By Mark) As `Last_Value`,
    Last_Value(Mark) Over(Order By Mark Rows Between Unbounded Preceding and Unbounded Following) As `Last_Value_Real`,
    Nth_Value(Mark, 4) Over(Order By Mark) As `Nth_Value` -- `Nth_Value` give nth value of particuler frame
From 
	Mark;

Select 
	Name,
    Mark,
    Lead(Mark) Over(Order By Name) As `Lead`,
    Lag(Mark) Over(Order By Name) As `Lag`,
    Lead(Mark, 2) Over(Order By Name) As `Lead By 2`,
    Lag(Mark, 2) Over(Order By Name) As `Lag By 2`
From 
	Mark;

-- When we use order by at that time first it will do ordering in table base on order by column then it find lead and leg
-- Same thing work with other function first it will do partitioning then it will do order by table with specific column then it use a function, on each column every time this process work.

Select 
	Name,
    Mark,
    Lead(Mark) Over(Order By Mark) As `Lead`,
    Lag(Mark) Over(Order By Mark) As `Lag`,
    Lead(Mark, 2) Over(Order By Mark) As `Lead By 2`,
    Lag(Mark, 2) Over(Order By Mark) As `Lag By 2`
From 
	Mark;


Select 
	Name,
    Mark,
    NTILE(5) Over(Order By Name) As `NTILE by 5`, -- divide frame in number of equals part and give the numbers base on it
    NTILE(10) Over(Order By Name) As `NTILE by 10`,
    NTILE(2) Over(Order By Name) As `NTILE by 2`
From 
	Mark;
