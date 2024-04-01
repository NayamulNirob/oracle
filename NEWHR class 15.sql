select e.employee_id, e.last_name, e.department_id, d.department_id, d.location_id
from employees e join departments d
on e.employee_id=d.department_id;

select first_name, last_name,salary,l.city
from employees e join departments d
on e.department_id=d.department_id
JOIN locations l
on d.location_id=l.location_id
where city = 'Oxford';

select job_title, department_name, last_name,e.hire_date
from employees e join departments d
on e.department_id = d.department_id
join jobs j
on e.job_id= j.job_id
where e.hire_date between '01-Jan-2000' and '31-Dec-2005';


select job_title, department_name,last_name, start_date
FROM employees e
join departments d
on d.department_id=e.department_id
join jobs j
on e.job_id=j.job_id
join job_history h
on e.employee_id=h.employee_id
where to_char (h.start_date,'YYYY') between 2000 and 2005
order by 4;
            



