select last_name,salary,commission_pct,
coalesce((salary+(commission_pct*salary)),salary+2000)"New salary"
from employees;


select last_name,salary,commission_pct,NVL(commission_pct,0),(salary*12)+
(salary *12*NVL(commission_pct,0))AN_SAl
from employees;

select to_date('May 24,2007','fxMonth DD,YYYY')
from dual;

select last_name,salary,commission_pct,NVL(commission_pct,1)
from employees;

select last_name,salary,commission_pct,
NVL2(commission_pct, salary + (salary * commission_pct), salary)as "New salary"
from employees;

select *
from employees
where job_id in('SA_REP','MK_MAN') and salary >10000 and salary<40000;

