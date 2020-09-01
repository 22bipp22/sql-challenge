--1. List the employee number, last name, first name, sex and salary of each employee
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees as e
JOIN salaries as s ON e.emp_no = s.emp_no;

--2. List first name, last name and hire date for employees who were hired in 1986.
SELECT first_name, last_name, hire_date
FROM employees
WHERE EXTRACT(year from hire_date) = '1986';

--3. List the manager of each department with the department number, department name,
--manager's employee number, last name and first name. 
SELECT departments.dept_no, departments.dept_name, dept_manager.emp_no, 
	employees.last_name, employees.first_name
FROM departments 
JOIN dept_manager on departments.dept_no = dept_manager.dept_no
JOIN employees on dept_manager.emp_no = employees.emp_no;

--4. List the department of each employee with the employee number, last name, first
--name, and department name
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
JOIN dept_emp on employees.emp_no = dept_emp.emp_no
JOIN departments on dept_emp.dept_no = departments.dept_no;

--5. List first name, last name, and sex for employees whose first name is Hercules
--and last names begin with "B".
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';

--6. List all employees in the Sales department, including their
--employee number, last name, first name and department name. 
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees as e
JOIN dept_emp on e.emp_no = dept_emp.emp_no
JOIN departments as d on dept_emp.dept_no = d.dept_no
WHERE d.dept_name = 'Sales';

--7. List all employees in the Sales and Development departments, including their
--employee number, last name, first name, and department name. 
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees as e
JOIN dept_emp on e.emp_no = dept_emp.emp_no
JOIN departments as d on dept_emp.dept_no = d.dept_no
WHERE d.dept_name = 'Sales'  
OR d.dept_name = 'Development';

--8. In descending order, list the frequency count of employees last names. 
SELECT last_name, count(last_name) as last_name_count
FROM employees
GROUP BY last_name
ORDER BY last_name_count DESC;



