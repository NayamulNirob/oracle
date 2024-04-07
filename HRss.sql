SELECT E.EMPLOYEE_ID,E.LAST_NAME,E.DEPARTMENT_ID,
D.DEPARTMENT_ID,D.LOCATION_ID
FROM EMPLOYEES E JOIN departments D
ON (E.DEPARTMENT_ID = D.DEPARTMENT_ID);

SELECT E.EMPLOYEE_ID,E.LAST_NAME,D.LOCATION_ID
FROM EMPLOYEES E JOIN departments D
ON (E.DEPARTMENT_ID = D.DEPARTMENT_ID);

SELECT employee_id ,city , department_name 
FROM employees e join departments d
on e.department_id  = d.department_id 
join locations l
on d.location_id = l.location_id ;


SELECT employee_id ,city , department_name 
FROM employees e join departments d
on e.department_id  = d.department_id 
join locations l
on d.location_id = l.location_id 
where city = 'Oxford';

SELECT first_name||''||last_name,salary,city
FROM employees e  join departments d
on e.department_id = d.department_id
join locations l
on d.location_id = l.location_id
where city = 'Oxford'
ORDER BY 1;

SELECT j.job_title,department_name,
last_name,hire_date
FROM employees e join jobs j
on e.job_id = j.job_id 
join departments d
on e.department_id = d.department_id
where hire_date> '01-JAN-2000'
ORDER by 4;



