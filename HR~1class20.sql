select last_name,salary
from employees
where salary 
NOT BETWEEN 5000 and 12000;

select last_name,department_id
from employees 
where department_id in (20, 50)
ORDER BY last_name;

select last_name,salary,department_id
from employees
where (salary BETWEEN 5000 and 12000) and 
( department_id =20  or department_id = 50);

select last_name "Employee",
salary Monthly_salary,department_id
from employees
where (salary BETWEEN 5000 and 12000) and 
department_id in (20,50)
ORDER BY 3;

