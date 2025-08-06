drop view student_in_patna_view;

CREATE OR REPLACE VIEW student_in_patna_view AS
    SELECT 
        id, name, city
    FROM
        student
    WHERE
        city = 'Patna';