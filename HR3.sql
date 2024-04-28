DESCRIBE departments;

select employee_id,last_name,job_id,hire_date start_date
from hr.employees;

select last_name,salary
from hr.employees
where salary>12000;

Select last_name,department_id
from hr.employees
where employee_id =176;

select last_name,job_id,hire_date
from hr.employees
where last_name in('Matos','Taylor');



select last_name,salary
from hr.employees
where salary between 5000 and 12000 and (select last_name,department_id
from hr.employees
where department_id in(20,50));



select last_name,hire_date
from employees
where to_char(hire_date,'YYYY')in '2006';

select last_name,hire_date
from employees
where hire_date between '1-Jan-2006' and '31-Dec-2006';



select last_name,salary
from hr.employees
where salary > '&amount';


select employee_id,last_name,salary,department_id
from employees
where manager_id = '&manager_id';

select last_name
from hr.employees
where last_name  like '__a%';


select last_name,job_id,salary
from hr.employees
where job_id in ('SA_MAN', 'ST_CLERK') and salary not in (2500,3500,7000);

select employee_id,last_name,salary,round(((salary*15.5)/100)+salary) as "new salary"
from employees;


select employee_id,last_name,salary,round(((salary*15.5)/100)+salary) as "new salary",round((salary*15.5)/100) as "increase"
from hr.employees;

select last_name name,length(Last_name) length
from hr.employees
where last_name like 'J%' or last_name like'A%' or last_name like'M%';

select initcap(last_name) name,length(Last_name) length
from hr.employees
where last_name like '& start_letter%';

select initcap(last_name) name,length(Last_name) length
from hr.employees
where last_name like upper('& start_letter%');

select last_name
from hr.employees
where  last_name like UPPER('a%');

select last_name,round(months_between( sysdate,hire_date)) as "months_worked"
from hr.employees;

SELECT last_name, ROUND ((sysdate - hire_date)/30) as "months_worked"
FROM hr.employees;

select last_name,lpad(salary,15,'$')
from hr.employees;

select last_name,rpad(' ',salary/1000,'*') as  "Employee_and_there_salary"
from hr.employees;

select last_name ||' earns '||to_char(salary,'fm$99999.00')||' Monthly but wants '||to_char(salary*3,'fm$99999.00')||'.' as "Drems salary"
from hr. employees;

select last_name,hire_date,
'to_char(next_day(add_months(hire_date,6),'Monday'),'fmDay,"the" Ddspth "of" month,YYYY') review
from hr. employees;

select job_id, case job_id
when job_id = 'ST_CLERK' THEN 'E'
when job_id = 'ST_REP' THEN 'D'
when job_id = 'IT_PROG' THEN 'C'
when job_id = 'ST_MAN' THEN 'B'
when job_id = 'AD_PRESS' THEN 'A'
ELSE '0' END GRADE
from hr.employees;
