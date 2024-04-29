select*
from employees;

SELECT department_id, round(avg(salary))
from employees
where (salary >12000)
GROUP by department_id;

SELECT last_name
from employees
WHERE last_name like 'S%';

SELECT AVG(salary) "Average"
FROM employees
WHERE job_id LIKE 'SA_REP';

SELECT first_name||','||last_name,hire_date
FROM employees
ORDER BY 2;
