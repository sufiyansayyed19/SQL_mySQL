
SELECT * FROM employees;

SELECT * FROM projects;

SELECT * FROM departments;


SELECT *
FROM employees
WHERE salary > 50000 AND age < 30;	

SELECT * 
FROM employees
WHERE name LIKE "A%";


SELECT * FROM employees WHERE age  BETWEEN 26 AND 25;


SELECT name  , COALESCE(dept_id, 'No Dept') 
FROM employees;



SELECT count(dept_id) total_count from employees;

SELECT coalesce(dept_id,'ab nahi hai to kya karu' ) IDS from employees;

SELECT * 
FROM employees 
WHERE dept_id <> 2 or dept_id IS NULL;

SELECT * FROM employees;

SELECT  dept_id
from employees
GROUP BY dept_id;

SELECT COUNT(*) total_count,dept_id
from Employees
GROUP BY dept_id;


SELECT dept_id, AVG(salary)
FROM employees
GROUP BY dept_id;



SELECT dept_id, count(dept_id) total_count
FROM employees
GROUP BY dept_id 
HAVING total_count > 1;



SELECT dept_id,AVG(Salary ) avg_salary
FROM employees
GROUP BY dept_id
HAVING avg_salary > 55000;
SELECT dept_id,count(*)
FROM employees
GROUP BY dept_id;


SELECT dept_id,count(dept_id)
FROM employees
WHERE salary > 50000
GROUP BY dept_id;

SELECT dept_id, SUM(salary) total_salary
FROM employees
GROUP BY dept_id
HAVING total_salary > 100000;

SELECT dept_id, count(dept_id), AVG(salary)
FROM employees
GROUP By dept_id
HAVING count(dept_id) > 1 AND AVG(salary) > 50000;


SELECT e.name,e.salary, d.dept_name
FROM employees e
INNER JOIN departments d 
ON e.dept_id = d.dept_id
WHERE d.dept_name = 'IT';

SELECT e.name, p.project_id
FROM employees e
LEFT JOIN projects p
ON e.emp_id = p.emp_id
WHERE p.project_id IS NULL;

SELECT e.emp_id,e.name, Count(*)
FROM employees e
LEFT JOIN projects p
ON e.emp_id = p.emp_id
GROUP BY e.emp_id;

SELECT e.name, COUNT(p.project_id) AS project_count
FROM employees e
LEFT JOIN projects p
ON e.emp_id = p.emp_id
GROUP BY e.name;



SELECT 
FROM employees e 
LEFT JOIN 