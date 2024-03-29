select COUNT(commission_pct)
from employees;

select AVG(NVL(commission_pct,0))
from employees
where commission_pct  is null;

select *
from employees;


SELECT department_id,job_id,commission_pct,manager_id, Avg(salary)
from employees
WHERE commission_pct is not null
GROUP BY department_id,job_id,commission_pct,manager_id
ORDER BY 5 desc;



SELECT department_id,job_id,commission_pct,manager_id, Avg(salary)
from employees
GROUP BY department_id,job_id,commission_pct,manager_id
ORDER BY 5 desc;



select job_id, AVG(salary)
From employees
GROUP BY department_id
HAVING MAX(salary) >10000;




select job_id,sum(salary) Payroll
from employees
where job_id not like '%REP%'
GROUP BY job_id
HAVING SUM(salary)>13000
ORDER BY sum(salary);


select to_char(hire_date,'YYYY')
from employees
group by to_char(hire_date,'YYYY')
having count(employee_id)>10;

SELECT department_id from employees
where commission_pct is not null
GROUP BY department_id
having count(commission_pct)>5;

select job_id, AVG(salary)
From employees
GROUP BY job_id
HAVING MAX(salary) >10000;




