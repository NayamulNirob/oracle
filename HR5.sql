UPDATE employees SET first_name = 'John', last_name = 'Smith'
WHERE employee_id = 180;

ROLLBACK;


SELECT last_name,(salary*12)*NVL(commission_pct,0) FROM
EMPLOYEES;

SELECT * FROM employees WHERE
last_name='Smith';

SELECT COUNT(department_id) FROM employees WHERE
last_name='Smith';

SELECT e.last_name, d.department_name,
d.location_id
FROM employees e, departments D WHERE e.department_id=d.department_id;

TRUNCATE TABLE student;

ROLLBACK;

Select* from student;

DESCRIBE student;

INSERT INTO  student
VALUES (207,'Nirob','nirobkgm@gmail.com');