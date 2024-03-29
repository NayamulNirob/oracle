select department_id, avg(salary)
from employees
Group by department_id;


select department_id,job_id,commission_pct,
avg(salary)
FROM employees
Group by department_id,job_id,commission_pct
ORDER BY 1;


select job_id, avg(salary)
from employees
Group by JOB_id;


SELECT employee_id,job_id, SUM(salary) PAYROLL  
FROM employees
WHERE employee_id is NOT NULL
HAVING max(salary)>13000  
GROUP BY employee_id,job_id
ORDER BY SUM(salary)desc;


select job_id,sum(salary) Payroll
from employees
where job_id not like '%REP%'
GROUP BY job_id
HAVING SUM(salary)>13000
ORDER BY sum(salary); 

SELECT to_char (hire_date,'YYYY')
FROM employees
GROUP BY  to_char (hire_date,'YYYY')
HAVING count(hire_date)>10;


SELECT department_id
from employees
WHERE commission_pct is NOT NULL
GROUP BY department_id
HAVING COUNT(commission_pct)>5
ORDER BY 1;

SELECT job_id,AVG(salary)
from employees
GROUP BY job_id
HAVING AVG(salary)>10000;
