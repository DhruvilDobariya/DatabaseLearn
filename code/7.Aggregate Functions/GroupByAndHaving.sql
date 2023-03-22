SELECT Company, Count(Company) From Product
Group By Company
Having Count(Company) >= 5;

SELECT Company, Sum(Quantity) from Product
Group By Company;

SELECT Company, Sum(Quantity) As TotalQuantity from Product
Group By Company
HAVING TotalQuantity > 50;

SELECT Company, Sum(Quantity) As TotalQuantity from Product
Where Quantity >= 4
Group By Company
HAVING TotalQuantity > 50;

SELECT Company, Sum(Quantity) As TotalQuantity from Product
Where Quantity >= 4
Group By Company
HAVING TotalQuantity > 40
ORDER BY Company
LIMIT 2;

-- Sequence of query like:
-- Select Statement
-- Where Statement
-- Group By Statement
-- Having Statement
-- Order By Statement
-- Limit Statement

