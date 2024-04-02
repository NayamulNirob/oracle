
SELECT first_name,last_name,hire_date,salary
FROM employees
where salary>10000;

SELECT first_name,hire_date,salary
FROM employees
where job_id='IT_PROG' OR job_id = 'SA_MAN';

SELECT first_name,last_name,hire_date,salary,employee_id
FROM employees
where  employee_id=150 OR employee_id=160;


SELECT job_title,max_salary,min_salary,max_salary-min_salary
    FROM jobs
    Where Max_salary between 10000 and 20000; 
    
