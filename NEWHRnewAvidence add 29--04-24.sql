CREATE TABLE EMP(
    eid NUMBER(4) NOT NULL  ,
    ename VARCHAR2(30),
    salary NUMBER(8,2),
    hire_date DATE,
    address VARCHAR2(30),
    CONSTRAINT eid_pk PRIMARY KEY (eid)
);

SELECT
    * FROM emp;

select*
from employees;

SELECT department_id, round(avg(salary)) as Maximum
from employees
GROUP by department_id
having MAX (salary) >12000;

SELECT last_name
from employees
WHERE last_name like 'S%';

SELECT AVG(salary) "Average"
FROM employees
WHERE job_id LIKE 'SA_REP';

SELECT first_name||','||last_name,hire_date
FROM employees
ORDER BY 2;
