-- SQLINES DEMO *** table
-- SQLINES FOR EVALUATION USE ONLY (14 DAYS)
CREATE TABLE customers (
    customer_id  BIGINT PRIMARY KEY,
    first_name   VARCHAR(255) NOT NULL,
    last_name    VARCHAR(255) NOT NULL,
    email        VARCHAR(255) UNIQUE NOT NULL,
    phone_number VARCHAR(20)
);

-- Cr... SQLINES DEMO ***
CREATE TABLE orders (
    order_id     BIGINT PRIMARY KEY,
    customer_id  BIGINT NOT NULL,
    order_date   DATETIME NOT NULL,
    total_amount DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY ( customer_id )
        REFERENCES customers ( customer_id )
);

-- SQLINES DEMO *** e data into Customers
INSERT INTO customers (
    customer_id,
    first_name,
    last_name,
    email,
    phone_number
) VALUES ( 1,
           'John',
           'Doe',
           'john.doe@example.com',
           '555-123-4567' );

INSERT INTO customers (
    customer_id,
    first_name,
    last_name,
    email,
    phone_number
) VALUES ( 2,
           'Jane',
           'Smith',
           'jane.smith@example.com',
           '555-987-6543' );

INSERT INTO customers (
    customer_id,
    first_name,
    last_name,
    email,
    phone_number
) VALUES ( 3,
           'Robert',
           'Jones',
           'robert.jones@example.com',
           '555-555-1212' );

-- SQLINES DEMO *** e data into Orders
INSERT INTO orders (
    order_id,
    customer_id,
    order_date,
    total_amount
) VALUES ( 1,
           1,
           now(),
           50.00 );

INSERT INTO orders (
    order_id,
    customer_id,
    order_date,
    total_amount
) VALUES ( 2,
           2,
           now(),
           100.00 );

INSERT INTO orders (
    order_id,
    customer_id,
    order_date,
    total_amount
) VALUES ( 3,
           1,
           now(),
           75.00 );

INSERT INTO orders (
    order_id,
    customer_id,
    order_date,
    total_amount
) VALUES ( 4,
           3,
           now(),
           25.00 );