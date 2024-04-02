
SELECT first_name,last_name,hire_date
FROM employees
where last_name='Davies';

SELECT last_name,hire_date
FROM employees
where hire_date>=(select hire_date from employees WHERE last_name='Davies')
ORDER BY 2;

SELECT last_name,job_id,salary
FROM employees
where job_id=(select job_id from employees WHERE  last_name= 'Taylor' fetch FIRST 1 rows only)
and salary >(select salary from employees WHERE last_name= 'Taylor'fetch FIRST 1 rows only);




select department_id,min(salary)
from employees 
GROUP BY department_id
HAVING MIN(salary)>(SELECT MIN(salary) FROM employees WHERE department_id = 30);
