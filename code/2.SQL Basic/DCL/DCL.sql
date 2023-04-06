-- DCL Command
-- 1. Grant
-- 2. Revoke

-- Create New User
CREATE USER Dhruvil@LOCALHOST IDENTIFIED BY 'Dhruvil123';

-- Show users
SELECT * FROM MYSQL.USER;

-- Grant To user for select operation
GRANT INSERT ON Book TO Dhruvil@LOCALHOST; 

-- Revoke privileges
REVOKE Insert ON Book FROM Dhruvil@LOCALHOST;

-- Delete User
DROP USER Dhruvil@LOCALHOST;