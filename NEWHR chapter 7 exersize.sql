SELECT MAX(salary) "Maximum",MIN(salary) "Minimum",
SUM(salary) "Sum",
ROUND(avg(salary)) "Avarage"
     FROM employees;
     
SELECT job_id, MAX(salary) "Maximum",MIN(salary) "Minimum",SUM(salary) "Sum",
ROUND(avg(salary)) "Avarage"
     FROM employees
    GROUP BY job_id;
    
select Job_id,count(*)  
FROM employees
GROUP BY job_id;

select Job_id,count(*)  
FROM employees
where job_id = '&job_Id'
GROUP BY job_id;

select count(DISTINCT(manager_id)) AS "Number of manager"
from employees;

SELECT MAX(salary)  - MIN(salary) as defarence
     FROM employees;
     
select manager_id,min(salary)
from employees
WHERE manager_id is not null
GROUP BY manager_id
HAVING MIN(salary) > 6000
ORDER BY 2 desc;
    
    SELECT COUNT(*) as "total",
    sum(DECODE(to_char(hire_date, 'YYYY'),2005,1,0)) "2005",
        sum(DECODE(to_char(hire_date, 'YYYY'),2006,1,0)) "2006",
         sum(DECODE(to_char(hire_date, 'YYYY'),2007,1,0)) "2007",
          sum(DECODE(to_char(hire_date, 'YYYY'),2008,1,0)) "2008"
         FROM employees;
         
         
 SELECT COUNT(*) as "total",
    sum(case when to_char(hire_date, 'YYYY')='2005' then 1 else 0 end) as "2005",
    sum(case when to_char(hire_date, 'YYYY')='2006' then 1 else 0 end) as "2006",
    sum(case when to_char(hire_date, 'YYYY')='2007' then 1 else 0 end) as "2007",
    sum(case when to_char(hire_date, 'YYYY')='2008' then 1 else 0 end) as "2008"
FROM employees; 


 SELECT job_id as "Job",
    sum(decode(department_id,20,salary)) as "Department 20",
    sum(decode(department_id,50,salary)) as "Department 50",
    sum(decode(department_id,80,salary)) as "Department 80",
    sum(decode(department_id,90,salary)) as "Department 90",
    SUM(salary) "Total"
FROM employees
group by job_id;


 SELECT job_id as "Job",
    sum(case WHEN department_id='20' THEN salary else null end ) as "Department 20",
    sum(case WHEN department_id='50' THEN salary else null end ) as "Department 50",
    sum(case WHEN department_id='80' THEN salary else null end ) as "Department 80",
    sum(case WHEN department_id='90' THEN salary else null end ) as "Department 90",
SUM(salary) "Total"
FROM employees
group by job_id;
    