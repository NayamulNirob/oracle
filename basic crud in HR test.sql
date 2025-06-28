create table test(id number,name VARCHAR2(100), hire_Date DATE,salary NUMBER);

ALTER TABLE test DROP COLUMN id;

ALTER TABLE test
ADD (id NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY);

insert into test(name,hire_date,salary)VALUES('Sina',TO_DATE('22-08-2024', '(DD-MM-YYYY)'),70000);

update test set salary=80000 where id=1;

DELETE from test where id=3 and name='Sina';

select * from test;