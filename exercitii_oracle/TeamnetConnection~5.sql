insert into employees (employee_id , first_name , last_name , hire_date, 
email , salary ,job_id, commission_pct)
values (1000+ (select max(employee_id) from employees) , 'Mihai' , 'Manole' ,
sysdate,'TNT@gmail.com', '10000', 'AD_PRES','0.2');
commit

update employees
set department_id = (select department_id from departments where department_name='IT Support')
where first_name='Mihai' and last_name= 'Manole' ;
commit

