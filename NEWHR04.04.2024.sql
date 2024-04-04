SELECT first_name||' '||last_name,salary

     FROM employees 
     WHERE salary >12000;
    
    
 SELECT first_name||' '||last_name,salary

     FROM employees 
     WHERE salary  NOT BETWEEN
       5000 and 12000;   
       
 SELECT last_name,department_id

     FROM employees 
     WHERE department_id in (20,50)
     ORDER BY 1;  
     
 SELECT last_name as "Employee",salary as "Monthly Salary"
 FROM Employees
 WHERE salary  between 5000 and 12000 and department_id in(20,50);  
 
 SELECT last_name,salary,commission_pct
      FROM employees
      Where commission_pct is not NULL
      ORDER BY 2 desc,3 desc;
      
  SELECT last_name,salary,commission_pct
      FROM employees
      Where commission_pct = 0.2;    
      
   SELECT last_name,department_id
      FROM employees
      Where employee_id = 176;   
      
      
     
   SELECT employee_id,last_name,salary,round((salary*15.5)/100+salary)as "New salary",
   round((salary*15.5)/100) as "increase"
      FROM employees;        
      
      
      SELECT initcap (last_name),length(last_name)
      from employees
      where last_name like'J%'
       or last_name like'A%'
        or last_name like'M.%';
        
SELECT last_name, lpad(salary,15,'$$$$$$') salary
FROM employees;
      
        
          
SELECT last_name||'  erans  '|| to_char(salary,'fm$9999999.00')||
'  Monthly but wants '||' '|| to_char(salary*3,'fm$9999999.00') 
as "Dream salarey."
FROM employees;    
    
      
SELECT last_name, hire_date,
to_char(next_day(add_months(hire_date,6),'Monday') ,
'fmDay,"The" Ddspth "of" month,YYYY')REVIEW
from employees;



       