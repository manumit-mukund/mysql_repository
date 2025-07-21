drop view student_in_patna;

CREATE VIEW student_in_patna AS
    SELECT 
        id, name, city
    FROM
        student
    WHERE
        city = 'Patna';