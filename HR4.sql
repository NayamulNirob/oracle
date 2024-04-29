create sequence emp_eid
INCREMENT by 1
start with 99
MAXVALUE 9999
NOCACHE
NOCYCLE;

select emp_eid.nextval
from dual;



create table emp123(
eid NUMBER (4) ,
ename varchar2 (30),
salary number (8,2),
hire_date DATE,
address varchar2(30)
);

CREATE TABLE emp(
 Eid number(5)default emp_id.nextval  
 Constraint emp_id primary key,
 EName VARCHAR2(35)not null,
 email VARCHAR2 (60) not null CONSTRAINT 
 student_email_unique Unique,
 salary number (8,2),
hire_date DATE,
address varchar2(30));