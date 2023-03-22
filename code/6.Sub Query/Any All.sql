SELECT ProductName
FROM Products
WHERE ProductID = ANY( -- here we can also use >, < and <= and >=
    SELECT ProductID
    FROM OrderDetails
    WHERE Quantity = 10
);
-- If any ptoduct id of Products Table equels to output of sub query's productid list then thease recoreds we get as a output.
-- The following SQL statement lists the ProductName if it finds ANY records in the OrderDetails table has Quantity equal to 10 (this will return TRUE because the Quantity column has some values of 10)

SELECT ProductName
FROM Products
WHERE ProductID = ALL(
    SELECT ProductID
    FROM OrderDetails
    WHERE Quantity = 10
);
-- If all ptoduct id of Products Table equels to output of sub query's productid list then thease recoreds we get as a output.
-- The following SQL statement lists the ProductName if ALL the records in the OrderDetails table has Quantity equal to 10. This will of course return FALSE because the Quantity column has many different values (not only the value of 10):