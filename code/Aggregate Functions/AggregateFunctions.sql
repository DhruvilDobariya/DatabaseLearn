-- Create DATABASE AggregateLearn;
-- use AggregateLearn;

-- Create Table Product(
--     Name VARCHAR(50),
--     Company VARCHAR(50),
--     Quantity INT,
--     Rate INT,
--     Cost INT
-- );

-- insert into Product (Name, Company, Quantity, Rate, Cost) values ('Truffle Shells - White Chocolate', 'Microsoft', 13, 742, 653);
-- insert into Product (Name, Company, Quantity, Rate, Cost) values ('Mushroom - King Eryingii', 'Google', 15, 389, 211);
-- insert into Product (Name, Company, Quantity, Rate, Cost) values ('Beef - Bresaola', 'Apple', 20, 317, 249);
-- insert into Product (Name, Company, Quantity, Rate, Cost) values ('Muffin Mix - Banana Nut', 'Microsoft', 13, 278, 328);
-- insert into Product (Name, Company, Quantity, Rate, Cost) values ('Mangostein', 'Apple', 10, 746, 888);
-- insert into Product (Name, Company, Quantity, Rate, Cost) values ('Pork - Ham, Virginia', 'Google', 20, 178, 76);
-- insert into Product (Name, Company, Quantity, Rate, Cost) values ('Pecan Raisin - Tarts', 'Microsoft', 15, 681, 529);
-- insert into Product (Name, Company, Quantity, Rate, Cost) values ('Pork - Tenderloin, Fresh', 'Google', 1, 783, 198);
-- insert into Product (Name, Company, Quantity, Rate, Cost) values ('Muffin - Blueberry Individual', 'Samsung', 12, 228, 327);
-- insert into Product (Name, Company, Quantity, Rate, Cost) values ('Latex Rubber Gloves Size 9', 'Google', 20, 540, 311);
-- insert into Product (Name, Company, Quantity, Rate, Cost) values ('Trueblue - Blueberry Cranberry', 'Microsoft', 10, 950, 718);
-- insert into Product (Name, Company, Quantity, Rate, Cost) values ('Cheese - Cheddar, Medium', 'Samsung', 3, 47, 780);
-- insert into Product (Name, Company, Quantity, Rate, Cost) values ('Cheese - Goat', 'Samsung', 9, 969, 836);
-- insert into Product (Name, Company, Quantity, Rate, Cost) values ('Tomatoes', 'Samsung', 12, 257, 665);
-- insert into Product (Name, Company, Quantity, Rate, Cost) values ('Juice - Tomato, 10 Oz', 'Microsoft', 1, 266, 606);
-- insert into Product (Name, Company, Quantity, Rate, Cost) values ('Carrots - Mini, Stem On', 'Samsung', 5, 101, 679);
-- insert into Product (Name, Company, Quantity, Rate, Cost) values ('Cheese - Goat With Herbs', 'Apple', 17, 824, 301);
-- insert into Product (Name, Company, Quantity, Rate, Cost) values ('Chocolate - Pistoles, Lactee, Milk', 'Microsoft', 17, 420, 199);
-- insert into Product (Name, Company, Quantity, Rate, Cost) values ('Apple - Macintosh', 'Microsoft', 2, 369, 868);
-- insert into Product (Name, Company, Quantity, Rate, Cost) values ('Cognac - Courvaisier', 'Microsoft', 12, 225, 853);

-- Aggregate functions
-- Count
-- select Count(*) from Product;
-- select count(distinct Company) from Product;

-- Sum
-- SELECT Sum(Quantity) As TotalQuantity from Product;

-- Avg
-- SELECT AVG(Cost) from Product; 

-- Max and Min
-- SELECT Max(Quantity) from Product;
-- SELECT Min(Quantity) from Product;


