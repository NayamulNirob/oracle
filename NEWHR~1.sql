select first_name,job_id,salary,salary*12 as "Yearly salary" 
From hr.employees
Where first_name like '%&first_name%';
