DELIMITER //

CREATE PROCEDURE GetAllEmployees()
BEGIN
	SELECT *  FROM employee;
END //

DELIMITER ;

CALL GetAllEmployees();