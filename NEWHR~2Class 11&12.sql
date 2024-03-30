DESCRIBE jobs;  

SELECT manager_id,employees.first_name,department_name,job_title,city,country_name
  FROM employees
  natural join departments manager_id
  NATURAL JOIN jobs
  NATURAL join locations
  NATURAL join regions
  NATURAL join countries;
  
  select employees.first_name,departments.department_name,jobs.job_title,locations.state_province,country_id,region_name
  from employees
  NATURAL JOIN departments
NATURAL JOIN jobs
NATURAL JOIN locations
NATURAL JOIN countries
NATURAL JOIN regions;

SELECT employee_id,last_name,location_id,department_id,job_id
FROM employees JOIN departments
USING (department_id);
  
  
select l.city,d.department_name
from locations l join departments d
USING (location_id)
 WHERE location_id=1400;
 
select first_name, d.department_name, e.manager_id
from employees  e join departments d USING (department_id)
WHERE department_id=50;
  
