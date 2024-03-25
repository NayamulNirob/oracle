SELECT ROUND(45.923,2),ROUND(45.923,0),ROUND(45.923,-1)
FROM DUAL;

SELECT TRUNC(45.923,2),TRUNC(45.923,0),TRUNC(45.923,-1)
FROM DUAL;

SELECT ROUND(45.923,-1),TRUNC(45.926,0),CEIL(2.83),FLOOR(2.83),MOD(1600,300)
FROM DUAL;

SELECT sysdate
FROM DUAL;

SELECT SESSIONTIMEZONE, CURRENT_DATE
FROM DUAL;


SELECT SESSIONTIMEZONE, CURRENT_TIMESTAMP FROM DUAL;


SELECT sysdate+7
FROM DUAL;

SELECT SYSDATE - HIRE_DATE,first_name
FROM employees;

SELECT first_name,add_months(sysdate,6),next_day(sysdate,'WED'),LAST_DAY(SYSDATE)
 FROM employees;
 
 select employee_id,hire_date ,MONTHS_BETWEEN(SYSDATE,hire_date)tenure,
 Add_months(hire_date,6)review,
 next_day(hire_date,'FRIDAY'),Last_day(hire_date)
 FROM employees
 WHERE MONTHS_BETWEEN(sysdate,hire_date)<200;
 
 
 
 select employee_id, hire_date,
 Round(hire_date,'MONTH'),TRUNC(hire_date,'MONTH')
 FROM employees
WHERE hire_date LIKE '%04';


 select employee_id, hire_date,
 Round(hire_date,'YEAR'),TRUNC(hire_date,'YEAR')
 FROM employees
WHERE hire_date LIKE '%04';