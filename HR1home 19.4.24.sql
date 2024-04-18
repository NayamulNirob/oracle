CREATE SEQUENCE student_id
INCREMENT BY 1
START WITH 140
MAXVALUE 99999
NOCACHE
NOCYCLE;


SELECT student_id.currval
from dual;


SELECT student_id.nextval
from dual;


CREATE TABLE Student(
id number(5)default student_id.nextval  
 Constraint sys_student_id primary key,
 Name VARCHAR2(35)not null,
 email VARCHAR2 (60) not null CONSTRAINT 
 student_email_unique Unique );

INSERT INTO student  VALUES (student_id.nextval,
'Nirjash','nirjash@gmail.com');

INSERT INTO student  VALUES (DEFAULT,
'Raju','raju@gmail.com');

SELECT * FROM student;

SELECT * FROM sales_reps;

COMMIT;

DESCRIBE ALL_SEQUENCES;

select * from ALL_SEQUENCES;


DROP TABLE table_name PURGE;

DROP TABLE table_name CASCADE CONSTRAINTS;
