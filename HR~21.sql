update sales_reps set commission_pct=0.25,
salary=7500
where id=202;

update sales_reps set name='Faa'
where id=202;

rollback;

update employees
set (job_id,salary) = (select job_id,salary from
employees
where employee_id =205)
where employee_id =103;


update employees
set department_id = (select department_id from
employees where employee_id =100)
where job_id =(select job_id from employees where employee_id=200);

select * from employees where employee_id=200