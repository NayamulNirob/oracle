SELECT first_name,job_id,salary,salary*12 Anual
FROM employees
ORDER BY 4 DESC
FETCH FIRST 10 ROWS ONLY;


SELECT first_name,employee_id
FROM employees
ORDER BY 2 
OFFSET 5 ROWS FETCH NEXT 5 ROWS ONLY;

SELECT first_name,employee_id
FROM employees
ORDER BY 2 
OFFSET 5 ROWS;

--prompt with " '&'(emparchent)"
SELECT employee_id,last_name,salary,department_id
FROM employees
WHERE employee_id=&employee_num;


SELECT first_name,job_id,salary,salary*12 AS "Yearly Salary"
FROM employees
WHERE salary<> &salary_amount
ORDER BY 2 DESC;

--string and date mustbe written in ('')cote but number is exepttional
SELECT first_name,job_id,salary,salary*12 AS "Yearly Salary"
FROM employees
WHERE first_name= '&employee_name'
ORDER BY 2 DESC;
--prompt with " '&'(emparchent)"

SELECT first_name,job_id,salary,salary*12 AS "Yearly Salary"
FROM employees
WHERE first_name like '%&employee_name%'
ORDER BY 2 DESC;

--maltipale promt 
SELECT employee_id,last_name,job_id,&colum_name
FROM employees
WHERE &condition
ORDER by &order_colum;
--maltipale promt 

--DEFINE employee_num=200

SELECT employee_id,last_name,salary,department_id
FROM employees
Where employee_id=&employee_num;

--UNDEFINE employee_num