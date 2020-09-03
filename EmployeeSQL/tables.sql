DROP TABLE employees;
DROP TABLE departments;
DROP TABLE dept_emp; 
DROP TABLE dept_manager;
DROP TABLE titles;
DROP TABLE salaries;

CREATE TABLE titles (
	title_id VARCHAR(10),
	title VARCHAR(30),
	PRIMARY KEY (title_id)	
);

CREATE TABLE employees (
	emp_no INT,
	emp_title VARCHAR(10),
	birth_date DATE,
	first_name VARCHAR(30),
	last_name VARCHAR(30),
	sex VARCHAR(1),
	hire_date DATE,
	PRIMARY KEY (emp_no),
	FOREIGN KEY(emp_title) REFERENCES titles (title_id)
);

CREATE TABLE departments (
	dept_no VARCHAR(10),
	dept_name VARCHAR(30),
	PRIMARY KEY (dept_no)
);

CREATE TABLE dept_emp (
	emp_no INT,
	dept_no VARCHAR(10),
	FOREIGN KEY(emp_no) REFERENCES employees (emp_no),
	FOREIGN KEY(dept_no) REFERENCES departments (dept_no),
	PRIMARY KEY(emp_no, dept_no)
);

CREATE TABLE dept_manager (
	dept_no VARCHAR(10),
	emp_no INT,
	FOREIGN KEY(dept_no) REFERENCES departments (dept_no),
	FOREIGN KEY(emp_no) REFERENCES employees (emp_no),
	PRIMARY KEY(emp_no, dept_no)
);


CREATE TABLE salaries (
	emp_no INT,
	salary INT,
	FOREIGN KEY(emp_no) REFERENCES employees (emp_no)
);





