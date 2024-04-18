CREATE SEQUENCE student_id
  INCREMENT BY 1 START WITH 1 MAXVALUE 99999
  NOCACHE
  NOCYCLE;


create table student(
id NUMBER(5) default student_id.nextval CONSTRAINT  sys_student_id PRIMARY KEY,
name VARCHAR2(30) not null,
email varchar2(60) not null constraint student_email_unique unique);

INSERT INTO student 
VALUES (DEFAULT,'Neyamul','nayamulislam@gmail.com');


COMMIT;

SELECT
    * FROM student;
    
    DROP SEQUENCE learner_id;
    
    drop table learner;
    
SELECT
    * FROM all_sequences;
    