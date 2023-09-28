
CREATE DEFINER=`Admin`@`localhost` PROCEDURE `GetLogTableName`()
BEGIN
	SELECT 
		TABLE_NAME
	FROM 
		INFORMATION_SCHEMA.TABLES
	WHERE
		TABLE_SCHEMA = (SELECT DATABASE());
        -- AND
        -- TABLE_NAME LIKE "yll%";
END