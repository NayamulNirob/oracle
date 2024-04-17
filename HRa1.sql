insert into employees(employee_id,
first_name,last_name,email,phone_number,hire_date,
job_id,salary,commission_pct,manager_id,department_id
)

values(
207,'Rouis','Ropp','LPOPPE','515.124.4567',
Current_date,'AC_ACCOUNT',6900,0.25,205,110
);

ROLLBACK;

INSERT INTO employees
VALUES(
207,'Ben','Baphealy','BRAPHEALK',
'515.127.4561',
TO_DATE('FEB 3, 2003','MM DD, YYYY'),
'SA_REP',11000,0.2,100,60);

insert into departments
(department_id,department_name,location_id)
values(&department_id,'&department_name',&location_id);

insert into sales_reps(id,name,salary,commission_pct)
select employee_id,last_name,salary,commission_pct
from employees
where job_id like '%REP%';

create table sales_reps(
id number(4)not null,
name varchar2(30),
salary number(8,2),
commission_pct number(2,2), 
constraint const_sales_reps_id primary key (id) 
);
commit;

--ALTER TABLE seles_reps RENAME to sales_reps;
--DROP TABLE SALES_REPS;
----truncate table sales_reps;
--delete from sales_reps
--where id =179;
rollback;
