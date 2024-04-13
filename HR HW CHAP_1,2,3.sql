select employee_id,last_name,salary*12 AS "Anual salary"
from employees;

select *
from departments
order by department_id;

select *
from employees;

select employee_id,last_name,job_id,hire_date
from employees;

select job_id
from employees;

select employee_id AS "Emp #",last_name AS "Employee" ,job_id AS "Job",hire_date
FROM employees;

select last_name||', '||job_id AS "Employee and Title"
from employees;

select employee_id||','||first_name||','||last_name||','||email||','||
phone_number||','||job_id||','||hire_date||','||salary||','||department_id
from employees;

SELECT last_name,salary
FROM employees
where salary>12000;

select last_name,department_id
from employees
where employee_id = 176;

select last_name,salary
FROM employees
where salary NOT BETWEEN 5000 and 12000;

select last_name,job_id,hire_date
from employees
where last_name = 'Matos' OR last_name = 'Taylor' 
ORDER by 3;

select last_name,job_id,hire_date
from employees
where last_name in ('Matos', 'Taylor') 
ORDER by 3;


select last_name,department_id
from employees
where department_id in(20,50) 
ORDER by 1;

select last_name,salary AS "Monthly Salary"
from employees
where department_id in (20, 50) and (salary BETWEEN 5000 and 12000)
ORDER by 1;

select last_name,hire_date
from employees
WHERE hire_date BETWEEN '1-Jan-2006' and  '31-Dec-2006';

SELECT last_name,job_id
FROM employees
WHERE manager_id is NULL;

SELECT last_name,salary,commission_pct
FROM employees
WHERE commission_pct is not NULL
ORDER BY 2 DESC,3 DESC;

SELECT LAST_NAME,SALARY
FROM employees
where salary > &salary;

SELECT employee_id,last_name,salary,department_id 
FROM employees
WHERE manager_id =&mager_id
ORDER BY 2;

SELECT employee_id,last_name,salary,department_id 
FROM employees
WHERE manager_id =&mager_id
ORDER BY 3;

SELECT employee_id,last_name,salary,department_id 
FROM employees
WHERE manager_id =&mager_id
ORDER BY 4;

SELECT last_name 
FROM employees
WHERE last_name LIKE '__a%';

SELECT last_name 
FROM employees
WHERE last_name LIKE '%a%' and last_name like '%e%';

SELECT last_name,job_id,salary 
FROM employees
where job_id='SA_REP' OR job_id='ST_CLERK' and  salary not in(2500,3500,7000);

SELECT last_name,salary,commission_pct
FROM employees
WHERE commission_pct = 0.20;



