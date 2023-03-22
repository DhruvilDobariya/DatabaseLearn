Create Table Product(
    ProductName nvarchar(250) Not NULL,
    CompanyName nvarchar(250) Not NULL,
    Quantity INT,
    Price DECIMAL,
    Primary Key(ProductName, CompanyName)
);
-- Composite key means, if we have not appropriate column which is use to indentify each recored uniquely then we combine morw then one column and use as a primary key.

Create Table Product(
    ProductName nvarchar(250) Not NULL,
    CompanyName nvarchar(250) Not NULL,
    Quantity INT,
    Price DECIMAL,
    Constraint PK_Product Primary Key(ProductName, CompanyName)
);