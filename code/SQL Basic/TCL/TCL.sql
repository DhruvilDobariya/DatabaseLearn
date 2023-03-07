-- BEGIN TRANSACTION transaction_name ;
-- SET TRANSACTION [ READ WRITE | READ ONLY ];
-- SAVEPOINT SAVEPOINT_NAME;
-- ROLLBACK TO SAVEPOINT_NAME; OR ROLLBACK;
-- COMMIT;

Begin TRANSACTION DeleteRow

    SAVEPOINT TableBeforDeleteRow
    Delete from Student Where id = 20
    SAVEPOINT TableAfterDeleteRow

    ROLLBACK to TableBeforDeleteRow
COMMIT;
