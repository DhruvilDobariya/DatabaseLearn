Select * From user
Order By Case
	When BirthMonth = "January" Then 1
    When BirthMonth = "February" Then 2
    When BirthMonth = "March" Then 3
    When BirthMonth = "April" Then 4
    When BirthMonth = "May" Then 5
    When BirthMonth = "June" Then 6
    When BirthMonth = "July" Then 7
    When BirthMonth = "August" Then 8
    When BirthMonth = "September" Then 9
    When BirthMonth = "October" Then 10
    When BirthMonth = "November" Then 11
    When BirthMonth = "December" Then 12
    Else 1000
    End Asc;