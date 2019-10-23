
-- (1)
(
SELECT 
e.emp_no,
e.last_name,
e.first_name,
e.gender,
s.salary
FROM employees e
JOIN salaries s
ON e.emp_no = s.emp_no
);

-- (2)
(
SELECT emp_no, first_name, last_name, hire_date
FROM employees
WHERE extract(year from hire_date) = '1986'
);

--(3)

(
SELECT
m.dept_no,
dept_name,
m.emp_no,
last_name,	
first_name,
m.from_date,
m.to_date
FROM dept_manager m
INNER JOIN departments ON m.dept_no = departments.dept_no
INNER JOIN employees ON m.emp_no = employees.emp_no
);


--(4)

(
SELECT
e.emp_no,
e.last_name,
e.first_name,	
d.dept_name
FROM employees AS e
INNER JOIN dept_emp AS de
ON de.emp_no=e.emp_no
INNER JOIN departments AS d
ON d.dept_no=de.dept_no
);

--(5)
(
SELECT * FROM employees
WHERE(first_name LIKE 'Hercules' AND last_name LIKE '%B%')
);


--(6)

(
SELECT
e.emp_no,
e.last_name,	
e.first_name,
d.dept_name
FROM employees AS e
INNER JOIN dept_emp AS de
ON e.emp_no=de.emp_no
INNER JOIN departments AS d
ON d.dept_no=de.dept_no
WHERE d.dept_name='Sales'
);

--(7)

(
SELECT
e.emp_no,
e.last_name,	
e.first_name,
d.dept_name
FROM employees AS e
INNER JOIN dept_emp AS de
ON e.emp_no=de.emp_no
INNER JOIN departments AS d
ON d.dept_no=de.dept_no
WHERE d.dept_name=('Sales') OR d.dept_name=('Development')
);

--(8)

(
SELECT last_name, COUNT(last_name) AS "Name Frequency"
FROM employees
GROUP BY last_name
ORDER BY "Name Frequency" DESC
);