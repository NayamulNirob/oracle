select last_name
from hr.employees
where last_name like LOWER('a%');

select last_name
from hr.employees
where lower(last_name) like 'a%';