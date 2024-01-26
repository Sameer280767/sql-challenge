ALTER DATABASE "Module 9 Challenge" SET DATESTYLE TO "ISO,MDY"

Drop table employees;
Drop table departments;
Drop table titles;
Drop table dept_emp;
Drop table salaries;
Drop table dept_manager;

CREATE TABLE titles (
    title_id VARCHAR PRIMARY KEY,
    title VARCHAR
);

SELECT * FROM titles

CREATE TABLE departments (
    dept_no VARCHAR PRIMARY KEY,
    dept_name VARCHAR
);

SELECT * FROM departments

CREATE TABLE employees (
    emp_no INT PRIMARY KEY,
    emp_title_id VARCHAR REFERENCES titles(title_id),
    birth_date DATE,
    first_name VARCHAR,
    last_name VARCHAR,
    sex CHAR,
    hire_date DATE
);

SELECT * FROM employees

CREATE TABLE salaries (
    emp_no INT PRIMARY KEY,
    salary INT,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

SELECT * FROM salaries

CREATE TABLE dept_emp (
    emp_no INT,
    dept_no VARCHAR,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

SELECT * FROM dept_emp

CREATE TABLE dept_manager (
    dept_no VARCHAR,
    emp_no INT,
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

SELECT * FROM dept_manager
