--Inspecting tables
-- SELECT *
-- FROM "Employees";

--Inspecting tables
-- SELECT * 
--public."Employees" FROM "Salaries";

--Select * 
--From "Employees"
--INNER join "Salaries" on Salaries.emp_NO = Employees.emp_NO;

--List the following details of each employee: employee number, last name, first name, gender, and salary.
SELECT Employees.emp_NO, Employees.first_name, Employees.last_name, Employees.gender, Salaries.salary
ROM Employees
INNER JOIN Salaries ON
Employees.emp_NO=Salaries.emp_NO;

--Finding Employees hired in 1986
SELECT first_name, last_name, hire_date
FROM Employees
WHERE hire_date BETWEEN '1986-01-01' AND '1987-01'

--List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name, and start and end employment dates.
SELECT Departments.Dept_NO, Departments.Dept_name,Dept_manager.emp_NO,Employees.last_name, Employees.first_name, Dept_manager.from_date,
FROM Deparmtents 
JOIN dept_manager
ON departments.dept_no = dept_manager.dept_no
JOIN Employees
ON Dept_manager.emp_NO = Employees.emp_NO;





