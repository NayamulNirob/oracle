
desc departments;

insert into departments(DEPARTMENT_ID,DEPARTMENT_NAME,MANAGER_ID,LOCATION_ID)
values(71,'JEE',100,1700);

rollback;
commit;

SELECT * FROM departments;