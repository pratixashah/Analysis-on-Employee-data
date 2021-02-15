-- List the following details of each employee: employee number, last name, first name, sex, and salary.

SELECT 
e.emp_no AS "Employee No.",
e.last_name AS "Last Name", 
e.first_name AS "First Name", 
e.sex AS "Gender", 
s.salary AS "Salary"
FROM employees e
JOIN salaries s ON e.emp_no = s.emp_no
ORDER BY e.emp_no

-- List first name, last name, and hire date for employees who were hired in 1986.

SELECT 
first_name AS "First Name", 
last_name AS "Last Name", 
hire_date AS "Hire Date"
FROM employees e
WHERE EXTRACT(YEAR FROM hire_date) = 1986
ORDER BY hire_date

-- List the manager of each department with the following information: 
-- department number, department name, the manager’s employee number, last name, first name.

SELECT dm.dept_no,d. dept_name, dm.emp_no,e.last_name,e.first_name
FROM dept_manager dm
JOIN employees e ON dm.emp_no = e.emp_no
JOIN departments d ON d.dept_no = dm.dept_no






