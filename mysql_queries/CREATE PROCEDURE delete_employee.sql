DROP PROCEDURE IF EXISTS delete_employee; 

DELIMITER //

CREATE PROCEDURE delete_employee(IN E_ID BIGINT)
BEGIN
    DELETE FROM Employee WHERE ID = E_ID;
END //

DELIMITER ;

CALL delete_employee(4);