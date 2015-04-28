select last_name||' '||first_name nume, email, salary,
       (select job_title from jobs where job_id = employees.job_id) post
        from employees
        where DEPARTMENT_ID = (select DEPARTMENT_ID
                                        from departments
                                        where department_name = 'Purchasing');
                                        
select last_name||' '||first_name nume, email, salary,
       (select job_title from jobs where job_id = employees.job_id) post
        from employees
        where DEPARTMENT_ID IN (select DEPARTMENT_ID
                                        from departments
                                        where department_name like 'A%');      
										
--Pentru a afisa salariatii care castiga mai mult decat salariul cel mai scazut din departamentul 30, se introduce:
�	SQL>  SELECT FIRST_NAME, SALARY, JOB_ID, DEPARTMENT_ID
		FROM EMPLOYEES
		WHERE SALARY > /*ANY--*/SOME
				(SELECT DISTINCT SALARY
					 FROM EMPLOYEES
					 WHERE DEPARTMENT_ID = 30)
		ORDER BY SALARY DESC; 
		
--ALL compara o valoare  cu fiecare valoare returnata de o subinterogare. Urmatoarea interogare gaseste salariatii care castiga mai mult decat orice salariat din Departamentul 30.
	SQL> SELECT FIRST_NAME, SALARY, JOB_ID, DEPARTMENT_ID
		FROM EMPLOYEES
		WHERE	SALARY > ALL
				(SELECT DISTINCT SALARY
				 FROM EMPLOYEES
				 WHERE DEPARTMENT_ID = 30)
		ORDER BY SALARY DESC;