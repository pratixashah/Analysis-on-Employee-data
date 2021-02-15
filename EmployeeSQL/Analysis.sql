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