create table seles_reps(
id number(4)not null,
name varchar2(30),
salary number (8,2),
commission_pct number (2,2),
constraint const_sales_reps_id primary key(id)
);

SELECT
    * FROM seles_reps;
    
    
SELECT *     
from all_constraints;
    
INSERT INTO seles_reps(id,name,salary,commission_pct)
SELECT employee_id, last_name, salary,commission_pct
  FROM employees
  WHERE job_id LIKE '%REP%';
  
COMMIT;  
  