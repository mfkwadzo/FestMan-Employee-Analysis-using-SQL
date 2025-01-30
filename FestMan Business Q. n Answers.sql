-- This is the business questions Festman seeks to answer

SELECT *
FROM employee;

-- How many employees are in the company?
SELECT
COUNT(DISTINCT(employee_id)) AS 'Total Employees'
FROM employee;

-- What is the highest salary
SELECT
MAX(Salary) AS 'Highest Salary'
FROM employee;

-- What is the Lowest Salary
SELECT
MIN(Salary) AS 'Lowest Salary'
FROM employee;

-- What is the average salary
SELECT
AVG(Salary) AS 'Average Salary'
FROM employee;

-- How many employees are there in the marketing department
SELECT
COUNT(employee_id) AS 'No_ of Marketing Employees'
FROM employee
WHERE department_name='Marketing';

/*Calculate the total salary expenditure for the employees 
in the finance department*/
SELECT
SUM(Salary) AS 'Total Finance Salary expenditure'
FROM employee
WHERE department_name= 'Finance';


-- Determine the average salary in the Engineering department

SELECT
AVG(Salary) AS 'Avg_Eng_Salary'
FROM employee
WHERE department_name= 'Engineering';


-- Identify the highest salary among employees in the sales department
SELECT
MAX(Salary) AS 'Max Salary_Sales'
FROM employee
WHERE department_name= 'Sales';


-- Retrieve the top 3 highest paid employees' ,name and salaries

SELECT 
 first_name,last_name,salary
FROM employee
ORDER BY salary DESC
LIMIT 3;


-- How many employees receive salaries over 65,000
SELECT 
COUNT(employee_id) AS 'Emp_Sal > 65,000)'
FROM employee
WHERE salary >65000;



-- Who are the employees with salaries between 60,000 and 80,000
SELECT
first_name,last_name,salary
FROM employee
WHERE salary BETWEEN 60000 AND 80000;


-- Which employess has left the company
SELECT * 
FROM employee
WHERE termination_date IS NOT NULL;


-- Who are the employees currently working in the company
SELECT * 
FROM employee
WHERE termination_date IS NULL;




-- Write a query to determine the number of staffs by department
SELECT 
  department_name, COUNT(DISTINCT(employee_id)) AS 'Employee'
 FROM employee
GROUP BY department_name
ORDER BY COUNT(DISTINCT(employee_id)) DESC;


-- Write a query to determine the total salary by department

SELECT 
	department_name, SUM(salary) AS 'Total Salary'
FROM employee
GROUP BY department_name
ORDER BY SUM(salary) DESC;




-- Write a query to determine the total salary within each salary range

SELECT
salary_range,SUM(salary) AS 'salary range total'
FROM employee
GROUP BY salary_range
ORDER BY SUM(salary) DESC;



-- Write a query to order job titles by total salary in descending order
SELECT
job_title,SUM(salary) AS 'Job Title Total_Salary'
FROM employee
GROUP BY job_title
ORDER BY SUM(salary) DESC;


-- What is the avg salary by dpt
SELECT
department_name, AVG(salary) AS 'AVG_Salary by DPT'
FROM employee
GROUP BY department_name
ORDER BY  AVG(salary) DESC;


-- Determine the total number of staff hired by year

SELECT
YEAR(hire_date) AS 'Year', 
COUNT(distinct(employee_id)) AS 'Total hire Each_Year'
FROM employee
GROUP BY YEAR(hire_date);



-- Determine the total number of staff who left within each year
SELECT 
Year(termination_date) AS 'Year',
COUNT(DISTINCT(employee_id)) AS 'Leavers'
FROM employee
WHERE termination_date IS NOT NULL
GROUP BY Year(termination_date);



 