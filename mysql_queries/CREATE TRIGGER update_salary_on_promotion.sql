CREATE TABLE employee_trigger (
    employee_id    INT PRIMARY KEY,
    employee_name  VARCHAR(100),
    salary         INT,
    promotion_date DATE
);

INSERT INTO employee_trigger (
    employee_id,
    employee_name,
    salary,
    promotion_date
) VALUES (
    1,
    'John Doe',
    50000,
    NULL
);

INSERT INTO employee_trigger (
    employee_id,
    employee_name,
    salary,
    promotion_date
) VALUES (
    2,
    'Jane Smith',
    60000,
    NULL
);

SELECT
    *
FROM
    employee_trigger;

DROP TRIGGER IF EXISTS update_salary_on_promotion;
DELIMITER //
CREATE TRIGGER update_salary_on_promotion
 BEFORE UPDATE ON employee_trigger
    FOR EACH ROW
BEGIN
    IF new.promotion_date IS NOT NULL THEN            
        -- SQLINES DEMO ***  after promotion
        set new.salary = old.salary * 1.1; -- SQLINES DEMO *** r promotion
    END IF;
END; 
//
DELIMITER ;

UPDATE employee_trigger
SET
    promotion_date = sysdate()
WHERE
    employee_id = 1;