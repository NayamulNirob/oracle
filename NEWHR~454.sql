SELECT employee_id,last_name,job_id,salary
     FROM employees
     WHERE salary <ALL(SELECT salary from employees WHERE job_id='IT_PROG')
     AND job_id <> 'IT_PROG';