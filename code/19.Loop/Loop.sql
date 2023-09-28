CREATE DEFINER=`Admin`@`localhost` PROCEDURE `LoopLearn`()
BEGIN
	DECLARE x INT DEFAULT 0;
    DECLARE str VARCHAR(250) DEFAULT '';
    
    SET x = 1;
    SET str = '';
    
    loop_lable: LOOP
		IF x > 10 THEN
			LEAVE loop_lable; -- It's like break
		END IF;
        
        SET x = x+1;
        IF (x mod 2) THEN
			ITERATE loop_lable; -- It's like continue
		ELSE 
			SET str = CONCAT(str, ', ', x);
		END IF;
    END LOOP;
    
    SELECT str;
END