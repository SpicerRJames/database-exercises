USE employees;

SELECT first_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya');

SELECT last_name
FROM employees
WHERE last_name LIKE 'E%';

SELECT hire_date
FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31';

SELECT hire_date
FROM employees
WHERE hire_date LIKE '%12-25%';

SELECT last_name
FROM employees
WHERE last_name LIKE '%q%';

SELECT first_name
FROM employees
WHERE first_name < 20000
AND first_name IN ('Irena', 'Vidya')
OR first_name = 'Maya';

SELECT first_name, gender
FROM employees
WHERE gender = 'M'
AND (
    first_name IN ('Irena', 'Vidya', 'Maya')
);

SELECT last_name
FROM employees
WHERE last_name LIKE 'E%' OR (last_name LIKE '%E');

SELECT COUNT(last_name) FROM employees WHERE last_name LIKE 'E&E' GROUP BY last_name;