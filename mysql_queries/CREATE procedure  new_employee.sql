CREATE TABLE EMPLOYEE_FOR_PROCEDURE (
    EMPID INT PRIMARY KEY,
    EMP_NAME VARCHAR(20) NOT NULL,
    DEPT VARCHAR(20),
    SALARY INT NOT NULL,
    DOJ DATE NOT NULL,
    BRANCH VARCHAR(20) NOT NULL
);

insert INTO EMPLOYEE_FOR_PROCEDURE
VALUES(101,'E1','PRODUCTION',45000,'2000-03-12','BANGLORE');

insert INTO EMPLOYEE_FOR_PROCEDURE
VALUES(102,'E2','HR',70000,'2002-07-03','BANGLORE');

insert INTO EMPLOYEE_FOR_PROCEDURE
VALUES(103,'E2','HR',70000,'2002-07-03','BANGLORE');

DELIMITER //
Create procedure new_employee (

   IN EMPID int,
   IN EMP_NAME CHAR(20),
   IN DEPT CHAR(20),
   IN SALARY int,
   IN DOJ DATE,
   IN BRANCH CHAR(20)
   
   ) 
   
      BEGIN
      INSERT INTO EMPLOYEE_FOR_PROCEDURE(EMPID, EMP_NAME, DEPT, SALARY, DOJ, BRANCH) 
	  VALUES (EMPID, EMP_NAME, DEPT, SALARY, DOJ, BRANCH);
      END //
      
DELIMITER ;


CALL new_employee (104,'E4','IT', 24000, '2003-09-20', 'SAHARSA');