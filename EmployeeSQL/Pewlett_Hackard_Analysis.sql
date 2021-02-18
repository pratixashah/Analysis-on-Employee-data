-- 1.List the following details of each employee: employee number, last name, first name, sex, and salary.

SELECT 
e.emp_no AS "Employee No.",
e.last_name AS "Last Name", 
e.first_name AS "First Name", 
e.sex AS "Gender", 
s.salary AS "Salary"
FROM employees e
LEFT JOIN salaries s ON e.emp_no = s.emp_no
ORDER BY "Employee No."

-- 2.List first name, last name, and hire date for employees who were hired in 1986.

SELECT 
first_name AS "First Name", 
last_name AS "Last Name", 
hire_date AS "Hire Date"
FROM employees e
WHERE EXTRACT(YEAR FROM hire_date) = 1986
ORDER BY hire_date, first_name

-- 3.List the manager of each department with the following information: 
-- department number, department name, the manager’s employee number, last name, first name.

SELECT 
dm.dept_no AS "Department No.",
d.dept_name AS "Department Name", 
dm.emp_no AS "Employee No.",
e.last_name AS "Last Name",
e.first_name AS "First Name"
FROM dept_manager dm
LEFT JOIN employees e ON dm.emp_no = e.emp_no
LEFT JOIN departments d ON dm.dept_no = d.dept_no
ORDER BY 1

-- 4.List the department of each employee with the following information: 
-- employee number, last name, first name, and department name.

SELECT 
e.emp_no AS "Employee No.",
e.last_name AS "Last Name", 
e.first_name AS "First Name", 
d.dept_name AS "Department Name" 
FROM employees e
LEFT JOIN dept_emp de ON e.emp_no = de.emp_no
LEFT JOIN departments d ON de.dept_no = d.dept_no 
ORDER BY 1 

-- 5.List first name, last name, and sex for employees whose first name is “Hercules” and last names begin with “B”.

SELECT 
first_name AS "First Name",
last_name AS "Last Name", 
CASE 
	WHEN sex='M' THEN 'Male'
	WHEN sex='F' THEN 'Female'
	ELSE 'other'
END AS "Gender"
FROM employees
WHERE UPPER(first_name) = 'HERCULES' AND UPPER(last_name) LIKE 'B%'

-- 6.List all employees in the Sales department, including their employee number, last name, first name, and department name.

SELECT 
e.emp_no AS "Employee No.", 
e.last_name AS "Last Name", 
e.first_name AS "First Name", 
d.dept_name AS "Department Name"
FROM departments d
LEFT JOIN dept_emp de ON d.dept_no = de.dept_no
LEFT JOIN employees e ON de.emp_no = e.emp_no
WHERE UPPER(dept_name) = 'SALES'
ORDER BY 1

-- 7.List all employees in the Sales and Development departments, 
-- including their employee number, last name, first name, and department name.

SELECT 
e.emp_no  AS "Employee No.", 
e.last_name AS "Last Name", 
e.first_name AS "First Name", 
d.dept_name AS "Department Name"
FROM departments d
LEFT JOIN dept_emp de ON d.dept_no = de.dept_no
LEFT JOIN employees e ON de.emp_no = e.emp_no
WHERE UPPER(d.dept_name) IN ('SALES','DEVELOPMENT')
ORDER BY 4,1

-- 8.In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

SELECT 
last_name AS "Last Name", 
COUNT(last_name) AS "Frequency Count"
FROM employees
GROUP BY last_name
ORDER BY 2 DESC




















