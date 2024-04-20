CREATE VIEW view_emp_100_days
as 
SELECT DISTINCT(job_id)
from employees
WHERE CURRENT_date - hire_date >100
GROUP BY job_id
HAVING COUNT(employee_id)>3;

CREATE VIEW view_students_id
as
SELECT id,name,email
from student
WHERE id IS not null;


SELECT *
FROM VIEW_STUDENTS_ID;


DESC  VIEW_STUDENTS_ID;