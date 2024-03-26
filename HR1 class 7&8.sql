select sysdate,sysdate-7
FROM dual;


select hire_date, current_date, (sysdate - hire_date)/365 as year
FROM employees;

select *
from employees
WHERE  employee_id = '&employee_num';


select *
from employees
WHERE salary = '&name';

select first_name ,months_between(hire_date,sysdate)/12 as year
from employees;

select first_name ,Next_day('27-MAR-2024','SUNDAY')AS FRIDAY
from employees;

select first_name ,Next_day( sysdate,'SUNDAY')AS FRIDAY
from employees;

select first_name ,Next_day( sysdate,'FRIDAY')AS FRIDAY
from employees;

select first_name ,Next_day( sysdate,'year')AS FRIDAY
from employees;

select first_name ,last_day('27-MAR-2024')AS FRIDAY
from employees;

select first_name ,add_months('16-JAN-2024',8.5)AS FRIDAY
from employees;

select first_name ,round(sysdate,'month')AS FRIDAY
from employees;

select first_name ,round(sysdate,'year')AS FRIDAY
from employees;

select first_name ,trunc(sysdate,'year')AS FRIDAY
from employees;

select first_name ,trunc(sysdate,'month')AS FRIDAY
from employees;

select to_char(sysdate,'day')AS FRIDAY
from dual;

select to_char(sysdate,'year')AS FRIDAY
from dual;

select to_char(sysdate,'dy" of "month')AS FRIDAY
from dual;

select to_char(sysdate,'ddspth')AS FRIDAY
from dual;

select to_char(sysdate,'fmDD month yyyy')AS FRIDAY
from dual;


select to_char(salary,'$99999')AS FRIDAY
from employees;
