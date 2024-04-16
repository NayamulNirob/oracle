select location_id,street_address,city,state_province,country_name
from locations
NATURAL JOIN countries;

SELECT
    e.last_name,e.department_id,d.department_name 
    FROM employees e
    join departments d on d.department_id = e.department_id;
    
 select e.last_name, e.job_id,e.department_id,d.department_name   
 from employees e
 join departments d on e.department_id = d.department_id
 join locations l on l.location_id = d.location_id
 WHERE l.city = 'Toronto';
 
  select e.last_name, e.job_id,e.department_id,d.department_name   
 from employees e
 join departments d on e.department_id = d.department_id
 join locations l on l.location_id = d.location_id
 WHERE l.city = '&city';
 
 SELECT e.last_name "Employee", e.employee_id "EMP#",
 m.last_name "Manager",
    m.manager_id "Mgr#"
      FROM employees e
      join employees m on m.employee_id = e.manager_id; 
      
 SELECT e.last_name "Employee", e.employee_id "EMP#",
 m.last_name "Manager",
    m.manager_id "Mgr#"
      FROM employees e
      LEFT OUTER JOIN employees m
     on m.employee_id = e.manager_id
     order by 2; 
     
     SELECT last_name,department_id
          FROM employees
          GROUP BY department_id;

    SELECT e.last_name,e.department_id,c.last_name colleage
          FROM employees e
       join employees c on e.department_id = c.department_id
       WHERE e.employee_id <> c.employee_id
       order by 2;
      