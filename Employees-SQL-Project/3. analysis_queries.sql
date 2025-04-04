1. Total number of employees
SELECT COUNT(employee_id) AS employee_count FROM employees;

2. Average salary department wise
SELECT department, AVG(salary) AS average_salary FROM employees
GROUP BY department;

3. Employees who joined in the last 2 years
SELECT employee_name, join_date FROM employees
WHERE join_date >= '2023-04-01';

4. Department with highest number of employees
SELECT department, COUNT(employee_id) AS employee_count FROM employees
GROUP BY department
ORDER BY employee_count DESC
LIMIT 1;

5. Manager wise employee count
SELECT m.employee_name AS manager_name, COUNT(e.employee_id) AS employee_count FROM employees e
JOIN employees m 
ON m.employee_id = e.manager_id
GROUP BY manager_name;