-- Create Table SalesOrderHeader(
--     SalesOrderId INT Auto_Increment,
--     CustomerId INT NOT NULL,
--     Amount INT NOT NULL,
--     OrderDate DATE,
--     PRIMARY KEY(SalesOrderId)
-- );

-- insert into salesorderheader (CustomerId, Amount, OrderDate) values (2, 300, '2023-09-20');
-- insert into salesorderheader (CustomerId, Amount, OrderDate) values (4, 900, '2023-09-17');
-- insert into salesorderheader (CustomerId, Amount, OrderDate) values (4, 600, '2023-09-20');
-- insert into salesorderheader (CustomerId, Amount, OrderDate) values (3, 300, '2023-09-18');
-- insert into salesorderheader (CustomerId, Amount, OrderDate) values (2, 700, '2023-09-17');
-- insert into salesorderheader (CustomerId, Amount, OrderDate) values (2, 700, '2023-09-20');
-- insert into salesorderheader (CustomerId, Amount, OrderDate) values (1, 800, '2023-09-20');
-- insert into salesorderheader (CustomerId, Amount, OrderDate) values (1, 400, '2023-09-19');
-- insert into salesorderheader (CustomerId, Amount, OrderDate) values (1, 100, '2023-09-20');
-- insert into salesorderheader (CustomerId, Amount, OrderDate) values (2, 200, '2023-09-18');
-- insert into salesorderheader (CustomerId, Amount, OrderDate) values (8, 100, '2023-09-17');
-- insert into salesorderheader (CustomerId, Amount, OrderDate) values (2, 200, '2023-09-19');
-- insert into salesorderheader (CustomerId, Amount, OrderDate) values (2, 200, '2023-09-17');
-- insert into salesorderheader (CustomerId, Amount, OrderDate) values (1, 300, '2023-09-18');
-- insert into salesorderheader (CustomerId, Amount, OrderDate) values (4, 600, '2023-09-17');
-- insert into salesorderheader (CustomerId, Amount, OrderDate) values (2, 400, '2023-09-18');
-- insert into salesorderheader (CustomerId, Amount, OrderDate) values (10, 300, '2023-09-20');
-- insert into salesorderheader (CustomerId, Amount, OrderDate) values (6, 200, '2023-09-17');
-- insert into salesorderheader (CustomerId, Amount, OrderDate) values (7, 800, '2023-09-17');
-- insert into salesorderheader (CustomerId, Amount, OrderDate) values (7, 300, '2023-09-20');
-- insert into salesorderheader (CustomerId, Amount, OrderDate) values (10, 700, '2023-09-20');
-- insert into salesorderheader (CustomerId, Amount, OrderDate) values (2, 800, '2023-09-17');
-- insert into salesorderheader (CustomerId, Amount, OrderDate) values (6, 700, '2023-09-18');
-- insert into salesorderheader (CustomerId, Amount, OrderDate) values (7, 300, '2023-09-17');
-- insert into salesorderheader (CustomerId, Amount, OrderDate) values (9, 1000, '2023-09-20');
-- insert into salesorderheader (CustomerId, Amount, OrderDate) values (6, 200, '2023-09-18');
-- insert into salesorderheader (CustomerId, Amount, OrderDate) values (4, 300, '2023-09-19');
-- insert into salesorderheader (CustomerId, Amount, OrderDate) values (7, 200, '2023-09-19');
-- insert into salesorderheader (CustomerId, Amount, OrderDate) values (3, 300, '2023-09-17');
-- insert into salesorderheader (CustomerId, Amount, OrderDate) values (4, 700, '2023-09-19');
-- insert into salesorderheader (CustomerId, Amount, OrderDate) values (4, 600, '2023-09-18');
-- insert into salesorderheader (CustomerId, Amount, OrderDate) values (5, 200, '2023-09-19');
-- insert into salesorderheader (CustomerId, Amount, OrderDate) values (10, 500, '2023-09-18');
-- insert into salesorderheader (CustomerId, Amount, OrderDate) values (8, 100, '2023-09-18');
-- insert into salesorderheader (CustomerId, Amount, OrderDate) values (8, 500, '2023-09-18');
-- insert into salesorderheader (CustomerId, Amount, OrderDate) values (9, 900, '2023-09-17');
-- insert into salesorderheader (CustomerId, Amount, OrderDate) values (5, 200, '2023-09-19');
-- insert into salesorderheader (CustomerId, Amount, OrderDate) values (4, 100, '2023-09-18');
-- insert into salesorderheader (CustomerId, Amount, OrderDate) values (2, 300, '2023-09-19');
-- insert into salesorderheader (CustomerId, Amount, OrderDate) values (10, 800, '2023-09-18');


SELECT
    SalesOrderId,
    CustomerId,
    Amount,
    OrderDate,
    SUM(Amount) OVER(Partition By CustomerId) AS `Total Sum`,
    SUM(Amount) OVER(Partition By CustomerId Order By OrderDate) AS `Running Total like Rank`,
    SUM(Amount) OVER(Partition By CustomerId Order By OrderDate Range Between Unbounded Preceding and Current Row) AS `Running Total like Rank 2`,
    SUM(Amount) OVER(Partition By CustomerId Order By OrderDate Rows Between Unbounded Preceding and Current Row) AS `Running Total like Row`
FROM
    SalesOrderHeader;


-- Range Between Unbounded Preceding and Current Row
-- It take data and applied function between same range and current row
-- So we already see in output that which order have same order date it comes in same range so it evalue function between same range and current row 

-- Rows Between Unbounded Preceding and Current Row
-- It take data and applied function between row no and current row
-- So we already see in output that in every order row have different different sum of order.

-- Different Type of frame
Unbounded Preceding: First Row of frame
Unbounded Following: Last Row of frame
Current Row: Current Row of frame
N Preceding: N number of before the first current row of frame
N FOLLOWING: N number of after the first current row of frame