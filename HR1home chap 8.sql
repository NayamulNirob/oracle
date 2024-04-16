describe job_grades;

select e.first_name,e.salary,d.department_name,j.grade
from employees e
join departments d on e.department_id = d.department_id
join job_grades j on e.salary between LOWEST_SAL and HIGHEST_SAL;

select e.first_name,e.salary,d.department_name,j.grade
from employees e
join departments d using( department_id) 
join job_grades j on (e.salary between LOWEST_SAL and HIGHEST_SAL);


select e.first_name,e.salary,d.department_name,j.grade
from employees e
natural join departments d
join job_grades j on e.salary between LOWEST_SAL and HIGHEST_SAL;



SELECT first_name||' '||last_name,hire_date 
    FROM employees
        where hire_date >=
        (SELECT hire_date FROM employees where last_name ='Davies')
        order by hire_date;

SELECT e.last_name,e.hire_date,m.last_name,m.hire_date
FROM employees e
join employees m on   e.manager_id = m.employee_id
where e.hire_date < m.hire_date;



SELECT last_name, hire_date 
FROM employees 
WHERE department_id = (SELECT department_id FROM employees WHERE last_name = '&last_name') 
AND last_name != '&&last_name'
order by 1;
--Zlotkey

SELECT last_name, hire_date
FROM employees
WHERE department_id = (SELECT department_id
                       FROM employees
                       WHERE last_name = 'Zlotkey')
AND last_name != 'Zlotkey';

select employee_id,last_name,salary
from employees
where salary>(SELECT avg(salary) FROM employees)
order by salary;

SELECT employee_id,last_name
FROM employees
where department_id in
(select department_id from employees 
where last_name like '%u%');

select last_name,department_id,job_id
from employees 
join departments  using (department_id)
where department_id in (select department_id 
from departments 
where location_id =1700);



select e.last_name,e.department_id,e.job_id
from employees e 
join departments d on e.department_id = d.department_id
where location_id =1700;

select last_name,salary
from employees
where manager_id in (select manager_id from employees
where last_name in 'King');


select department_id,last_name,job_id
from employees
where department_id in (select department_id 
from departments
where department_name='Executive');

select last_name,salary
from employees
where salary> ANY(SELECT min(salary) FROM employees 
where department_id=60)
order by salary;


SELECT employee_id,last_name,salary
FROM employees
where department_id in
(select department_id from employees 
where last_name like '%u%') AND salary> (select avg(salary) from employees);
