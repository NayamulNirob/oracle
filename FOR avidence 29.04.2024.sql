DROP TABLE EMP1281745;

CREATE TABLE EMP1281745(
    eid NUMBER(4) NOT NULL  ,
    ename VARCHAR2(30),
    salary NUMBER(8,2),
    hire_date DATE,
    address VARCHAR2(30),
    CONSTRAINT eid_pk PRIMARY KEY (eid)
);

ALTER TABLE EMP1281745 add department_id number(4)
add department_name VARCHAR2(30);

ALTER TABLE EMP1281745 RENAME eid '1745' to '45';

INSERT INTO EMP1281745(eid,ename,salary,hire_date,address,department_id,department_name)
VALUES(101,'Neyamul',350000,'26-Dec-2024','Framget',90,'Java');

select ename,department_name,salary
from EMP1281745
WHERE department_id =80;


select *
from EMP1281745;

create SEQUENCE EMP1281745_eid
INCREMENT by 1
START WITH 100
maxvalue 999999
nocache
nocycle;

INSERT INTO EMP1281745(eid,ename,salary)
SELECT employee_id, last_name, salary
  FROM employees
  WHERE job_id LIKE '%IT_PROG%';
  
 ROLLBACK;