
--1
create or replace view V_SALARIATI as
select e.employee_id , e.first_name , e.last_name , e.job_id , j.job_title , e.department_id , 
d.department_name , e.salary , e.commission_pct from employees e , departments d, jobs j where e.department_id=d.department_id(+) 
and e.job_id = j.job_id ;

select * from user_objects

--2
create or replace view V_SALARIATI_FINANCE as
select * from employees where department_id=100
with check option;

insert into V_SALARIATI_FINANCE values(55545,'M','M','dsad@gmail.com','3423243242',sysdate,'FI_MGR',10000,0.2,101,100);

--1 sequence
create sequence emp_sequence 
start with 10
increment by 10
maxvalue 1000
cache 100;

--2
select 

insert into emmployees values(55545,'M','M','dsad@gmail.com','3423243242',sysdate,'FI_MGR',10000,0.2,101,100);
