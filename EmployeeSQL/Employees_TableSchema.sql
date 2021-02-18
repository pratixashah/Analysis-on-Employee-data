-- Script for Creating Tables in DB

-- To Create Table departments with dept_no as Primary Key
CREATE TABLE departments (
    dept_no VARCHAR(4) PRIMARY KEY ,
    dept_name VARCHAR(30) NOT NULL,
)

-- To Create Table titles with titles as Primary Key
CREATE TABLE titles (
    titles VARCHAR(5) PRIMARY KEY,
    title VARCHAR(30)   NOT NULL
)

-- To Create Table employees with emp_no as Primary Key
-- emp_title_id as Foreign Key Reference to titles in titles Table
CREATE TABLE employees (
    emp_no INT PRIMARY KEY,
    emp_title_id VARCHAR(5) NOT NULL,
    birth_date DATE NOT NULL,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    sex CHAR(1) NOT NULL,
    hire_date DATE NOT NULL,
	FOREIGN KEY emp_title_id REFERENCES titles(titles)
)

-- To Create Table dept_manager with dept_no and emp_no as Composite Key
-- dept_no as Foreign Key Reference to dept_no in departments Table
-- emp_no as Foreign Key Reference to emp_no in employees Table
CREATE TABLE dept_manager (
    dept_no VARCHAR(4) NOT NULL,
    emp_no INT NOT NULL,
    PRIMARY KEY (dept_no, emp_no),
	FOREIGN KEY dept_no REFERENCES departments(dept_no),
	FOREIGN KEY emp_no REFERENCES employees(emp_no)
)

-- To Create Table dept_emp with emp_no and dept_no as Composite Key
-- emp_no as Foreign Key Reference to emp_no in employees Table
-- dept_no as Foreign Key References to dept_no in departments Table
CREATE TABLE dept_emp (
    emp_no INT NOT NULL,
    dept_no VARCHAR(4) NOT NULL,
    PRIMARY KEY (emp_no,dept_no),
	FOREIGN KEY emp_no REFERENCES employees(emp_no),
	FOREIGN KEY dept_no REFERENCES departments(dept_no)
)

-- To Create Table salaries
-- emp_no as Foreign Key References to emp_no in employees Table
CREATE TABLE salaries (
    emp_no INT NOT NULL,
    salary INT NOT NULL,
	FOREIGN KEY emp_no REFERENCES employees(emp_no)
)
