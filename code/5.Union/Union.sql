-- create database UnionLearn;
-- use UnionLearn;

-- create table Student (
-- 	Id INT,
-- 	FirstName VARCHAR(50),
-- 	LastName VARCHAR(50),
-- 	Email VARCHAR(50),
-- 	Gender VARCHAR(50),
-- 	City VARCHAR(50)
-- );
-- insert into Student (Id, FirstName, LastName, Email, Gender, City) values (1, 'Astrid', 'Laing', 'alaing0@timesonline.co.uk', 'Female', 'Rajkot');
-- insert into Student (Id, FirstName, LastName, Email, Gender, City) values (2, 'Berte', 'Paulucci', 'bpaulucci1@xing.com', 'Female', 'Erfurt');
-- insert into Student (Id, FirstName, LastName, Email, Gender, City) values (3, 'Paquito', 'Staggs', 'pstaggs2@theglobeandmail.com', 'Male', 'Surat');
-- insert into Student (Id, FirstName, LastName, Email, Gender, City) values (4, 'Harlan', 'Blanchflower', 'hblanchflower3@usgs.gov', 'Genderfluid', 'Surat');
-- insert into Student (Id, FirstName, LastName, Email, Gender, City) values (5, 'Cristal', 'Ewbach', 'cewbach4@cnbc.com', 'Non-binary', 'Junagadh');
-- insert into Student (Id, FirstName, LastName, Email, Gender, City) values (6, 'Ester', 'Debow', 'edebow5@liveinternet.ru', 'Female', 'Junagadh');
-- insert into Student (Id, FirstName, LastName, Email, Gender, City) values (7, 'Bronnie', 'Harrigan', 'bharrigan6@jigsy.com', 'Male', 'Junagadh');
-- insert into Student (Id, FirstName, LastName, Email, Gender, City) values (8, 'Thain', 'Lowman', 'tlowman7@disqus.com', 'Male', 'Junagadh');
-- insert into Student (Id, FirstName, LastName, Email, Gender, City) values (9, 'Abraham', 'Betham', 'abetham8@disqus.com', 'Male', 'Surat');
-- insert into Student (Id, FirstName, LastName, Email, Gender, City) values (10, 'Israel', 'Faustian', 'ifaustian9@sciencedaily.com', 'Male', 'Surat');
-- insert into Student (Id, FirstName, LastName, Email, Gender, City) values (11, 'Nikolas', 'Mullender', 'nmullendera@sohu.com', 'Male', 'Rajkot');
-- insert into Student (Id, FirstName, LastName, Email, Gender, City) values (12, 'Kakalina', 'Reston', 'krestonb@facebook.com', 'Female', 'Ahemdabad');
-- insert into Student (Id, FirstName, LastName, Email, Gender, City) values (13, 'Geno', 'Weatherdon', 'gweatherdonc@walmart.com', 'Male', 'Warlubie');
-- insert into Student (Id, FirstName, LastName, Email, Gender, City) values (14, 'Codie', 'Gibbeson', 'cgibbesond@t-online.de', 'Male', 'Junagadh');
-- insert into Student (Id, FirstName, LastName, Email, Gender, City) values (15, 'Noelani', 'Chillingsworth', 'nchillingsworthe@uol.com.br', 'Female', 'Surat');
-- insert into Student (Id, FirstName, LastName, Email, Gender, City) values (16, 'Aarika', 'Clemett', 'aclemettf@wordpress.com', 'Female', 'Rajkot');
-- insert into Student (Id, FirstName, LastName, Email, Gender, City) values (17, 'Mignonne', 'Bowley', 'mbowleyg@microsoft.com', 'Female', 'Ahemdabad');
-- insert into Student (Id, FirstName, LastName, Email, Gender, City) values (18, 'Sharline', 'Chaloner', 'schalonerh@facebook.com', 'Polygender', 'Surat');
-- insert into Student (Id, FirstName, LastName, Email, Gender, City) values (19, 'Kelly', 'Omond', 'komondi@oracle.com', 'Male', 'Junagadh');
-- insert into Student (Id, FirstName, LastName, Email, Gender, City) values (20, 'Rudolph', 'Couchman', 'rcouchmanj@wordpress.org', 'Male', 'Canauay');

-- create table Faculty (
-- 	Id INT,
-- 	FirstName VARCHAR(50),
-- 	LastName VARCHAR(50),
-- 	Email VARCHAR(50),
-- 	Gender VARCHAR(50),
-- 	City VARCHAR(50)
-- );
-- insert into Faculty (Id, FirstName, LastName, Email, Gender, City) values (1, 'Gannie', 'Di Carlo', 'gdicarlo0@elegantthemes.com', 'Male', 'Bordeaux');
-- insert into Faculty (Id, FirstName, LastName, Email, Gender, City) values (2, 'Tiebold', 'Abelov', 'tabelov1@posterous.com', 'Male', 'Koh Kong');
-- insert into Faculty (Id, FirstName, LastName, Email, Gender, City) values (3, 'Hakim', 'Pactat', 'hpactat2@cnet.com', 'Male', 'Qingjiangqiao');
-- insert into Faculty (Id, FirstName, LastName, Email, Gender, City) values (4, 'Huntley', 'Pirrey', 'hpirrey3@illinois.edu', 'Genderfluid', 'Surat');
-- insert into Faculty (Id, FirstName, LastName, Email, Gender, City) values (5, 'Stacia', 'Brodie', 'sbrodie4@ovh.net', 'Female', 'Kutasari');
-- insert into Faculty (Id, FirstName, LastName, Email, Gender, City) values (6, 'Ignace', 'Sporrij', 'isporrij5@lulu.com', 'Male', 'Ypacarai');
-- insert into Faculty (Id, FirstName, LastName, Email, Gender, City) values (7, 'Leeland', 'Hellicar', 'lhellicar6@howstuffworks.com', 'Male', 'Rajkot');
-- insert into Faculty (Id, FirstName, LastName, Email, Gender, City) values (8, 'Jacintha', 'Mathison', 'jmathison7@cdbaby.com', 'Polygender', 'Surat');
-- insert into Faculty (Id, FirstName, LastName, Email, Gender, City) values (9, 'Thadeus', 'Croker', 'tcroker8@technorati.com', 'Male', 'Junagadh');
-- insert into Faculty (Id, FirstName, LastName, Email, Gender, City) values (10, 'Aura', 'Gurrado', 'agurrado9@cloudflare.com', 'Female', 'Khorramdarreh');
-- insert into Faculty (Id, FirstName, LastName, Email, Gender, City) values (11, 'Patten', 'Chaffen', 'pchaffena@admin.ch', 'Male', 'Junagadh');
-- insert into Faculty (Id, FirstName, LastName, Email, Gender, City) values (12, 'Rossy', 'Placido', 'rplacidob@rediff.com', 'Male', 'Astorga');
-- insert into Faculty (Id, FirstName, LastName, Email, Gender, City) values (13, 'Brandi', 'Fullwood', 'bfullwoodc@oaic.gov.au', 'Polygender', 'Ahemdabad');
-- insert into Faculty (Id, FirstName, LastName, Email, Gender, City) values (14, 'Osmond', 'Charlesworth', 'ocharlesworthd@reference.com', 'Male', 'Marigot');
-- insert into Faculty (Id, FirstName, LastName, Email, Gender, City) values (15, 'Tiffanie', 'Luggar', 'tluggare@seattletimes.com', 'Female', 'Junagadh');
-- insert into Faculty (Id, FirstName, LastName, Email, Gender, City) values (16, 'Leigh', 'Ballentime', 'lballentimef@princeton.edu', 'Male', 'Ahemdabad');
-- insert into Faculty (Id, FirstName, LastName, Email, Gender, City) values (17, 'Gretta', 'Avrahamoff', 'gavrahamoffg@chronoengine.com', 'Female', 'Rajkot');
-- insert into Faculty (Id, FirstName, LastName, Email, Gender, City) values (18, 'Garrik', 'Kadwallider', 'gkadwalliderh@chronoengine.com', 'Male', 'Ahemdabad');
-- insert into Faculty (Id, FirstName, LastName, Email, Gender, City) values (19, 'Katusha', 'Bahde', 'kbahdei@dion.ne.jp', 'Female', 'Rajkot');
-- insert into Faculty (Id, FirstName, LastName, Email, Gender, City) values (20, 'Lance', 'Sabate', 'lsabatej@nasa.gov', 'Male', 'Ahemdabad');

-- Union
Select City From Student
Union
Select City From Faculty;
-- It will remove duplicate value from result set

-- Union All
Select City From Student
Union All
Select City From Faculty;
-- It's result set may contains duplicate value