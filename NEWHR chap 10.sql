DESCRIBE job_grades;

SELECT e.last_name, e.salary,d.department_name,j.grade
from employees e
join departments d on d.department_id = e.department_id
join job_grades j on e.salary BETWEEN j.lowest_sal and j.highest_sal;

SELECT e.last_name, e.salary,d.department_name,j.grade
from employees e
NATURAL join departments d 
join job_grades j on e.salary BETWEEN j.lowest_sal and j.highest_sal;

SELECT last_name,hire_date
from employees
where hire_date>( select hire_date from employees where last_name = 'Davies');


select e.last_name,e.hire_date,p.last_name,P.hire_date
  FROM employees e
  JOIN employees p on p.employee_id =  e.manager_id 
  WHERE e.hire_date < p.hire_date;
  
  select w.last_name,w.hire_date,m.last_name,m.hire_date
  FROM employees w
  JOIN employees m on w.manager_id = m.employee_id
  WHERE w.hire_date < m.hire_date;
  
  select employee_id, last_name, salary
    FROM employees
    WHERE salary> (SELECT AVG(salary) FROM employees)
    ORDER BY 3 desc;
    
SELECT employee_id, last_name
FROM employees
WHERE department_id in 
(SELECT department_id from employees where last_name like '%u%');

select e.last_name,e.department_id,e.job_id
  FROM employees e
  join departments d on e.department_id =d.department_id
  WHERE  d.location_id =1700;
  
SELECT last_name, salary
     FROM employees 
     WHERE manager_id IN (SELECT employee_id FROM employees WHERE last_name='King');
     
select department_id,last_name, job_id
  FROM employees 
  WHERE department_id in 
  (SELECT department_id FROM departments WHERE department_name='Executive');
  
SELECT last_name,salary
  FROM employees  
  WHERE salary > ANY (select salary FROM employees WHERE department_id =60);
  
SELECT last_name,salary
  FROM employees  
  WHERE salary > (select min(salary) FROM employees WHERE department_id =60);  
  
SELECT employee_id, last_name, salary
  FROM employees
WHERE department_id IN 
        (SELECT department_id 
          FROM employees
          WHERE last_name like '%u%')and salary >(SELECT AVG(salary) 
                FROM employees);  
  