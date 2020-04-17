USE employees;

SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name, d.dept_name
FROM employees as e
JOIN dept_manager as de
ON de.emp_no = e.emp_no
JOIN departments as d
ON d.dept_no = de.dept_no
WHERE de.to_date = '9999-01-01' AND e.emp_no;

SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name, d.dept_name
FROM employees as e
JOIN dept_manager as de
ON de.emp_no = e.emp_no
JOIN departments as d
ON d.dept_no = de.dept_no
WHERE de.to_date = '9999-01-01' AND e.gender = 'f';

Select titles.title AS 'Title', COUNT(titles.emp_no) AS 'COUNT'
FROM titles
    JOIN dept_emp
        ON titles.emp_no = dept_emp.emp_no
    JOIN departments
        ON dept_emp.dept_no = departments.dept_no
WHERE titles.to_date = '9999-01-01'
    AND departments.dept_name = 'Customer Service'
    AND dept_emp.to_date = '9999-01-01'
GROUP BY titles.title;