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

