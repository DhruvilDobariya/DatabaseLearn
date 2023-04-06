Create Procedure InsertBook(
	p_Title varchar(250),
    p_Author varchar(250),
    p_Price Decimal,
    p_Rating INT,
    p_PublishDate Date,
    p_URL varchar(250),
    p_Description varchar(500)
)
Begin
	Insert into Book (
		Title,
        Author,
        Author,
        Price,
        Rating,
        PublishDate,
        URL,
        Description
    )
    value (
		p_Title,
        p_Author,
        p_Author,
        p_Price,
        p_Rating,
        PublishDate,
		p_URL
    )
End;
	