-- We have two table
-- Product{ProductID, ProductName, SupplierID, CategoryID, Unit, Price}
-- Suplier{SupplierID, SupplierName, ContactName, Address, City, PostalCode, Country}
--  Problem: We ant to those supplier name that deliver product which price is more then 20
SELECT SupplierName FROM Suppliers
WHERE EXISTS (
    SELECT * FROM Products 
    WHERE Products.SupplierID = Suppliers.SupplierID AND Price > 20
);
-- Here if child query give any thing as output then an only then we get output from perent query.

SELECT SupplierName FROM Suppliers
WHERE NOT EXISTS (
    SELECT * FROM Products 
    WHERE Products.SupplierID = Suppliers.SupplierID AND Price > 20
);
-- If child query don't give any thing as a output then an only then we get outpot from perent query. 