SELECT first_name,last_name,salary
FROM employees
where first_name='Payam';

SELECT first_name,last_name,salary
FROM employees
where first_name=initcap('payam');

SELECT first_name,last_name,salary
FROM employees
where lower(first_name)='payam';

SELECT first_name,last_name,salary
FROM employees
where upper(first_name)='PAYAM';


SELECT first_name,last_name,salary,
CONCAT(first_name,last_name) "Full Name",SUBSTR(first_name,3,3)
FROM employees
WHERE first_name=Initcap('payam');

SELECT first_name,last_name,salary,
CONCAT(first_name,last_name) "Full Name",LENGTH(first_name)
FROM employees;

SELECT first_name,last_name,salary,
CONCAT(first_name,last_name) "Full Name",instr(first_name,'m')
FROM employees;

SELECT first_name,last_name,salary,
CONCAT(first_name,last_name) "Full Name",instr(lower(first_name),'d')
FROM employees
ORDER BY 5 DESC;


SELECT first_name,last_name,salary,
CONCAT(first_name,last_name) "Full Name",instr(lower(first_name),'d'),
lpad(first_name,10,'-')
FROM employees
ORDER BY 5 DESC;

SELECT first_name,last_name,salary,
CONCAT(first_name,last_name) "Full Name",instr(lower(first_name),'d'),
rpad(first_name,10,'-')
FROM employees
ORDER BY 5 DESC;


SELECT CONCAT(CONCAT(last_name, '''s job category is '), job_id)
"JOB" FROM employees
WHERE SUBSTR(job_id,4)='REP'

SELECT CONCAT(CONCAT(last_name, '''s job category is '), job_id)
"JOB" FROM employees
WHERE SUBSTR(job_id,1,2)='IT'

SELECT * 
FROM employees
where substr(job_id,1,2)='IT'

select employee_id,concat(first_name,last_name)Name,
length (last_name),instr(last_name,'a')"Contains 'a'?"
from employees
where substr(last_name,-1,1)='n';

SELECT last_name,job_id,
lower(concat( substr(last_name,1,3), substr(job_id,1,2)))
FROM employees;


SELECT department_name||q'[Department's Manager Id:]'||manager_id AS "Department and Manager"
from departments;
     
