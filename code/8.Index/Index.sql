-- single index 
Create Index EmailIndex
on indexlearn.user(Email);

-- multiple index 
Create Index EmailGenderIndex
on indexlearn.user(Email, Gender);

-- Show Index 
Show Index from indexlearn.user;

-- Drop Index
Alter Table User
Drop Index EmailIndex;
