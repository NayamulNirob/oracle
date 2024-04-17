UPDATE seles_reps set commission_pct=.25, salary=7500
where id = 202;


UPDATE employees 
set (job_id,salary) = (SELECT job_id,salary from employees
where employee_id = 205)
WHERE employee_id = 103;


UPDATE employees
SET department_id = 
        (SELECT department_id 
            FROM employees 
            WHERE employee_id = 100)
          WHERE job_id = (SELECT job_id from employees where employee_id = 200);
          
ROLLBACK;          
          
