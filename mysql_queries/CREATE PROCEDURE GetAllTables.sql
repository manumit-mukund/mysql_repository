DELIMITER //

CREATE PROCEDURE GetAllTables()
BEGIN
SELECT table_name
FROM information_schema.tables
WHERE table_type='BASE TABLE'
AND table_schema='myhibernate';
END //

DELIMITER ;

CALL GetAllTables();