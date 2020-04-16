USE employees;

SELECT CONCAT(first_name, ' ', last_name) AS full_name
FROM employees
GROUP BY full_name, last_name
ORDER BY last_name
LIMIT 10;

SELECT CONCAT(first_name, ' ', last_name) AS full_name, birth_date AS DOB
FROM employees
GROUP BY first_name, last_name, birth_date
ORDER BY last_name
LIMIT 10;

SELECT CONCAT(emp_no, ' ' ,first_name, ' ', last_name) AS full_name, birth_date AS DOB
FROM employees
GROUP BY emp_no, first_name, last_name, birth_date
ORDER BY last_name
LIMIT 10;

