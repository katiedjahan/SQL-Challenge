-- Create departments table
CREATE TABLE departments (
dept_no VARCHAR(4) NOT NULL PRIMARY KEY,
dept_name VARCHAR NOT NULL
);

-- Create titles table
CREATE TABLE titles (
title_id VARCHAR(5) NOT NULL PRIMARY KEY,
title VARCHAR NOT NULL
);

-- Create employees table
CREATE TABLE employees (
emp_no INT NOT NULL PRIMARY KEY,
emp_title_id VARCHAR(5) NOT NULL,
birth_date VARCHAR(10) NOT NULL,
first_name VARCHAR NOT NULL,
last_name VARCHAR NOT NULL,
sex VARCHAR(1) NOT NULL,
hire_date VARCHAR(10) NOT NULL,
FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

-- Create dept_manager table
CREATE TABLE dept_manager (
dept_no VARCHAR(4) NOT NULL,
emp_no INT NOT NULL,
PRIMARY KEY (dept_no, emp_no),
FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

-- Create dept_emp table
CREATE TABLE dept_emp (
emp_no INT NOT NULL,
dept_no VARCHAR(4) NOT NULL,
PRIMARY KEY (emp_no, dept_no),
FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

-- Create salaries table
CREATE TABLE salaries (
emp_no INT NOT NULL,
salary INT NOT NULL,
PRIMARY KEY (emp_no, salary),
FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);


SELECT *
FROM departments;

SELECT *
FROM titles;

SELECT *
FROM employees;

SELECT *
FROM dept_manager;

SELECT *
FROM dept_emp;

SELECT *
FROM salaries;