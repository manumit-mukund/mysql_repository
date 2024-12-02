CREATE TABLE CUSTOMER (
   ID INT AUTO_INCREMENT,
   NAME VARCHAR (20) NOT NULL,
   AGE INT NOT NULL,
   ADDRESS CHAR (25),
   SALARY DECIMAL (18, 2),
   PRIMARY KEY (ID)
);

INSERT INTO CUSTOMER VALUES 
(NULL, 'Ramesh', 32, 'Ahmedabad', 2000.00),
(NULL, 'Khilan', 25, 'Delhi', 1500.00),
(NULL, 'Kaushik', 23, 'Kota', 2000.00),
(NULL, 'Chaitali', 25, 'Mumbai', 6500.00),
(NULL, 'Hardik', 27, 'Bhopal', 8500.00),
(NULL, 'Komal', 22, 'Hyderabad', 4500.00),
(NULL, 'Muffy', 24, 'Indore', 10000.00);