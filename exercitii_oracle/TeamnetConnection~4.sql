select last_name , hire_date
from employees
where department_id = (select department_id from employees where last_name = 'Zlotkey')
and last_name != 'Zlotkey' ; 

select employee_id , last_name 
from employees
where department_id in (select department_id from employees where last_name like ('%u%'));

select last_name , job_title , salary 
from employees , jobs
where employees.job_id = jobs.job_id 
and salary in (select salary from employees where salary not in (2500 , 3500 , 7000)
and job_title in (select job_title from jobs where job_title like ('P%')))
order by jobs.job_title asc , employees.last_name desc;

select last_name , job_id , department_id , salary
from employees 
where salary > any (select salary from employees where department_id=30) ;