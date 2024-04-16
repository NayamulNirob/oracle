select count(DISTINCT(manager_id)) AS "Number of Manager"
from employees;

SELECT MAX(salary) - min(salary) AS "Difference" 
FROM employees;

select manager_id, min(salary)
from employees
WHERE manager_id is NOT NULL
GROUP by manager_id
HAVING min(salary)>6000
ORDER BY 2 DESC;

SELECT COUNT(*) "Total",
sum(case when to_char(hire_date,'YYYY')='2005' then 1 else 0 end)"2005",
sum(case when to_char(hire_date,'YYYY')='2006' then 1 else 0 end)"2006",
sum(case when to_char(hire_date,'YYYY')='2007' then 1 else 0 end)"2007",
sum(case when to_char(hire_date,'YYYY')='2008' then 1 else 0 end)"2008"
from employees;

SELECT COUNT(*) "Total",
sum(decode(to_char(hire_date,'YYYY'),'2005',1,0 ))"2005",
sum(decode(to_char(hire_date,'YYYY'),'2006',1,0 ))"2006",
sum(decode(to_char(hire_date,'YYYY'),'2007',1,0 ))"2007",
sum(decode(to_char(hire_date,'YYYY'),'2008',1,0 ))"2008"
from employees;

SELECT job_id AS "JOB",
sum(decode(department_id,20,salary)) "DEPARTMENT 20",
sum(decode(department_id,50,salary)) "DEPARTMENT 50",
sum(decode(department_id,80,salary)) "DEPARTMENT 80",
sum(decode(department_id,90,salary)) "DEPARTMENT 90",
sum(salary)"Total"
from employees
group by job_id;

SELECT job_id AS "JOB",
sum(case when(department_id)=20 then salary else NULL end) "DEPARTMENT 20",
sum(case when(department_id)=50 then salary else NULL end) "DEPARTMENT 50",
sum(case when(department_id)=80 then salary else NULL end) "DEPARTMENT 80",
sum(case when(department_id)=90 then salary else NULL end) "DEPARTMENT 90",
sum(salary)"Total"
from employees
group by job_id;
