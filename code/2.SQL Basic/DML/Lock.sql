LOCK TABLE 
	birth_date 
Read;
-- If we lock Read them we can use just select query on table.

LOCK TABLE 
	birth_date 
Write;
-- If we lock Read them we can use just select, insert, update and delete query on table.

