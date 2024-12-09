SELECT 
    COUNT(*) AS NumberOfColumns
FROM
    INFORMATION_SCHEMA.COLUMNS
WHERE
    table_schema = 'myhibernate'
        AND table_name = 'customer';