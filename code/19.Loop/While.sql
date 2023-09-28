CREATE DEFINER=`Admin`@`localhost` PROCEDURE `WhileLearn`()
BEGIN
	DECLARE x INT DEFAULT 0;
    DECLARE str VARCHAR(250) DEFAULT '';
    
    SET x = 1;
    SET str = '';
    WHILE x <= 10 DO
		SET str = CONCAT(str, ', ', x);
		SET x = x + 1;
	END WHILE;
    
    SELECT str;
END