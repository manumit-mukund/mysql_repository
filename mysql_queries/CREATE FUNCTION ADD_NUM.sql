DELIMITER //

CREATE FUNCTION add_num (a INT, b INT) 
RETURNS INT DETERMINISTIC
BEGIN
RETURN a + b;
END //
      
DELIMITER ;

-- call the addition function
SELECT ADD_NUM(10, 12);

