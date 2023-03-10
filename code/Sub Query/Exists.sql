-- We have two table
-- Product{ProductID, ProductName, SupplierID, CategoryID, Unit, Price}
-- Suplier{SupplierID, SupplierName, ContactName, Address, City, PostalCode, Country}
--  Problem: We ant to those supplier name that deliver product which price is more then 20
SELECT SupplierName FROM Suppliers
WHERE EXISTS (
    SELECT * FROM Products 
    WHERE Products.SupplierID = Suppliers.SupplierID AND Price > 20
);

-- using In
SELECT SupplierName FROM Suppliers
WHERE SupplierID In (
    SELECT SupplierID FROM Products 
    WHERE Price > 20
);