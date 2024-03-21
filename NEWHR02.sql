select first_name,job_id,salary,salary*12 as "Yearly salary" 
From hr.employees
Where salary not in 9000
order by 3 desc
FETCH FIRST 5 ROWS ONLY;


select first_name,job_id,salary,salary*12 as "Yearly salary" 
From hr.employees
Where salary not in 9000
order by 3 desc
OFFSET 5 ROWS FETCH FIRST 5 ROWS ONLY;



select first_name,job_id,salary,salary*12 as "Yearly salary" 
From hr.employees
Where employee_id = '&Employee_num';






