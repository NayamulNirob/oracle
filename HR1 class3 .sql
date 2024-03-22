--data table limit with where operator
select*
from employees
where salary =2800;


select*
from employees
where salary <=2800;

select*
from employees
where salary >=2800;
--data table limit with where operator

--in operator
select*
from employees
where salary in(9000,2500,2800);
--in operator

--between operator
select*
from employees
where salary BETWEEN 10000 AND 20000;
--between operator

--like  operator
select*
from employees
where first_name like'M%';

--for pattern matching
select*
from employees 
where last_name like'_m%'; 
--for pattern matching

select*
from employees
where first_name like'Mi%';

select*
from employees
where first_name like'%m';


select*
from employees
where first_name like'%l%';

--between operator


--null operator
select*
from employees
where commission_pct is NULL;
--null operator

--and operator
select*
from employees
where commission_pct is NULL and salary BETWEEN 10000 AND 20000;
--and operator

--or operator
select*
from employees
where commission_pct is NULL or salary BETWEEN 10000 AND 20000;
--or operator

select*
from employees
where department_id=90;

select*
from employees
where job_id='IT_PROG';


select*
from employees
where job_id='IT_PROG' and salary=4800 and first_name like '%i%';



select*
from employees
where job_id='IT_PROG' and salary=4800 or first_name like 'M%';


select*
from employees
where job_id NOT IN 'IT_PROG' and salary=4800 or first_name like 'M%';

select*
from employees
where job_id NOT IN 'ST_CLERK' and salary=4800 or first_name like 'M%';

SELECT first_name,last_name,salary,department_id,HIRE_DATE
FROM employees
WHERE HIRE_DATE>='1-Jan-2002';

SELECT first_name,last_name,salary,department_id,HIRE_DATE
FROM employees
WHERE HIRE_DATE <>'07-JUN-2002'
ORDER BY first_name;


SELECT first_name,last_name,salary,department_id,HIRE_DATE
FROM employees
WHERE HIRE_DATE <>'07-JUN-2002'
ORDER BY salary,first_name,hire_date;


SELECT first_name,last_name,salary,department_id,HIRE_DATE
FROM employees
WHERE HIRE_DATE <>'07-JUN-2002'
ORDER BY salary DESC;


SELECT first_name,last_name,salary,salary*12 anual
FROM employees
ORDER BY salary DESC;


SELECT first_name,last_name,salary,department_id,HIRE_DATE
FROM employees
WHERE HIRE_DATE <>'07-JUN-2002'
ORDER BY 2;

