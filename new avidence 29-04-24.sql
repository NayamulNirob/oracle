CREATE TABLE EMP(
    eid NUMBER(4) NOT NULL  ,
    ename VARCHAR2(30),
    salary NUMBER(8,2),
    hire_date DATE,
    address VARCHAR2(30),
    CONSTRAINT eid_pk PRIMARY KEY (eid)
);

ALTER TABLE EMP add department_id number(4)
add department_name VARCHAR2(30);

SELECT
    * FROM emp;


