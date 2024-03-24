SELECT first_name,last_name,salary,
CONCAT(first_name,last_name) "Full Name",SUBSTR(first_name,3,3)
FROM employees
WHERE first_name=Initcap('payam');

SELECT first_name,last_name,salary,
CONCAT(first_name,last_name) "Full Name",LENGTH(first_name)
FROM employees
WHERE first_name=Initcap('payam');

SELECT first_name,last_name,salary,
CONCAT(first_name,last_name) "Full Name",instr(first_name,'m')
FROM employees
WHERE first_name=Initcap('payam');

SELECT first_name,last_name,salary,
CONCAT(first_name,last_name) "Full Name",instr(lower(first_name),'d')
FROM employees
ORDER BY 5 DESC;


SELECT CONCAT(CONCAT(last_name, '''s job category is '), job_id)
"JOB" FROM employees
WHERE SUBSTR(job_id,1,2)='IT'



SELECT first_name,job_id,
lower(CONCAT(SUBSTR(job_id,2,2),SUBSTR(first_name,2,2)))
FROM employees;
     
