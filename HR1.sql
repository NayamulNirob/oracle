SELECT last_name, (salary*12)* NVL(commission_pct,0) 
FROM EMPLOYEES;

SELECT COUNT(*) FROM employees WHERE last_name='Smith';

SELECT department_id,job_id, MAX(salary) 
FROM employees 
GROUP BY department_id,job_id,salary;

SELECT e.last_name, d.department_name, d.location_id
FROM employees e, departments d
WHERE e.department_id =d.department_id;


SELECT 'Dear Customer' ||','||first_name 
FROM employees;

SELECT 'Dear Customer ' || last_name || ',' FROM employees;

SELECT first_name, salary,12*(salary+100) FROM employees;

SELECT COUNT(department_id) FROM employees WHERE last_name='Smith';


SELECT TO_CHAR(SYSDATE, 'YYYY') FROM dual;

