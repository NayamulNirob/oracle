SELECT employee_id,last_name,job_id,salary 
FROM employees
WHERE salary < ANY 
(SELECT salary FROM employees WHERE job_id = 'IT_PROG')
AND job_id <> 'IT_PROG';

SELECT last_name,salary,department_id 
FROM employees
where salary in 
(select min(salary)from employees group by department_id);

SELECT employee_id,last_name,job_id,salary 
FROM employees
WHERE salary < ALL 
(SELECT salary FROM employees WHERE job_id = 'IT_PROG')
AND job_id <> 'IT_PROG';

SELECT first_name,department_id,salary
FROM employees
where (salary,department_id) in (select min(salary),department_id
from employees group by department_id)
ORDER BY department_id;

select last_name,employee_id,manager_id 
from employees
where employee_id not in 
(select manager_id FROM employees
where manager_id is not null);

