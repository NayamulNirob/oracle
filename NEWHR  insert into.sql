SELECT
    * FROM
 departments
 ORDER BY department_id;    

DESC departments;

INSERT INTO departments(MANAGER_ID,LOCATION_ID,DEPARTMENT_ID,DEPARTMENT_NAME)
VALUES(100,1700,71,'PR');

COMMIT;

ROLLBACK;
 
