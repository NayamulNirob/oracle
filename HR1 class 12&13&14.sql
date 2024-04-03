describe jobs;

SELECT employees.first_name,employees.last_name,employees.salary,jobs.job_title
from employees 
natural join jobs ;



SELECT e.first_name,e.last_name,e.salary,j.job_title
from employees e
natural join jobs j;

SELECT*
from employees 
natural join jobs ;

SELECT e.first_name,e.last_name,e.salary,j.job_title
from employees e
join jobs j using(job_id);

SELECT e.first_name,e.last_name,e.salary,j.job_title
from employees e
join jobs j on e.job_id=j.job_id;

select first_name,department_name,
job_id,city,country_name,region_name
from employees
natural join departments
natural join jobs
natural join locations
natural join countries
natural join regions;


select *
from employees
natural join departments
natural join jobs
natural join locations
natural join countries
natural join regions;

select employee_id,last_name,
location_id,department_id
From employees Join departments
Using (department_id);


SELECT l.city,d.department_name
FROM locations l Join departments d
Using (location_id)
where location_id=1400;
 