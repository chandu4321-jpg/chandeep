

 select salary
 from employees
 order by salary desc;
 
 select salary
 from employees
 order by salary asc;

SELECT department_id, AVG(salary) AS avg_salary
FROM employees
GROUP BY department_id;


SELECT department_id, max(salary) 
FROM employees
GROUP BY department_id;


SELECT department_id, AVG(salary) 
FROM employees
GROUP BY department_id
HAVING AVG(salary) > 10000;

SELECT department_id
FROM employees
GROUP BY department_id
HAVING AVG(salary) > 20000
ORDER BY department_id DESC; 

SELECT department_id, round(AVG(salary)),count(employee_id)
FROM employees
GROUP BY department_id
HAVING round(AVG(salary)) > 10000;


select max(salary)from employees;

select avg(salary) from employees;