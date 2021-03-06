--1) List the following details of each employee: employee number, last name, first name, sex, and salary.
select e.emp_no as "Employee Number", e.last_name as "Last Name", e.first_name as "First Name", e.sex, s.salary from employees as e
inner join salaries as s on 
e.emp_no = s.emp_no


--2) List first name, last name, and hire date for employees who were hired in 1986.
select last_name as "Last Name", first_name as "First Name", hire_date as "Hire Date" 
from employees
where hire_date like '%1986'


--3) List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
select departments.dept_no as "Department Number", departments.dept_name as "Department Name",dept_manager.emp_no as "Employee Number", last_name as "Last Name",first_name as "First Name"  from departments 
inner join dept_manager on
departments.dept_no = dept_manager.dept_no
inner join employees on
dept_manager.emp_no = employees.emp_no


-- 4) List the department of each employee with the following information: employee number, last name, first name, and department name.
select d.emp_no as "Employee Number", e.last_name as "Last Name", e.first_name as "First Name",departments.dept_name as "Department Name"  from dept_emp as d
inner join employees as e on
d.emp_no = e.emp_no
inner join departments on
d.dept_no = departments.dept_no


--5) List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
select first_name as "First Name", last_name as "Last Name",sex as "Sex" from employees
where first_name = 'Hercules'
and last_name like 'B%'

--6) List all employees in the Sales department, including their employee number, last name, first name, and department name.
select d.emp_no as "Employee Number", e.last_name as "Last Name", e.first_name as "First Name",departments.dept_name as "Department Name"  from dept_emp as d
inner join employees as e on
d.emp_no = e.emp_no
inner join departments on
d.dept_no = departments.dept_no
where dept_name = 'Sales'

--7) List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
select d.emp_no as "Employee Number", e.last_name as "Last Name", e.first_name as "First Name",departments.dept_name as "Department Name"  from dept_emp as d
inner join employees as e on
d.emp_no = e.emp_no
inner join departments on
d.dept_no = departments.dept_no
where departments.dept_name= 'Sales' or departments.dept_name= 'Development'

--8) In descending order, list the frequency count of employee last names, i.e., how many employees share each last name
--select * from employees
select last_name, count(last_name) as "Count of Last Names" from employees
group by last_name







