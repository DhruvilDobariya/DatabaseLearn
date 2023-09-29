CREATE DEFINER=`Admin`@`localhost` PROCEDURE `RepeatLearn`()
BEGIN
	DECLARE x INT DEFAULT 0;
    DECLARE str VARCHAR(250) DEFAULT '';
    
    SET x = 0;
    SET str = '';
    
    REPEAT
		SET x = x + 1;
		SET str = CONCAT(str, ', ', x);
	UNTIL x >= 10 END REPEAT;
    
    SELECT str;
END