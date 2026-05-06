-- =====================================================
-- QUESTION 1
-- Select all columns from the Employee table.
-- =====================================================

SELECT * 
FROM employee;

-- =====================================================
-- QUESTION 2
-- Select only the name and salary columns from Employee.
-- =====================================================

SELECT name, salary
FROM employee;

-- =====================================================
-- QUESTION 3
-- Select employees older than 30.
-- =====================================================

SELECT *
FROM employee
WHERE age > 30;

-- =====================================================
-- QUESTION 4
-- Select names of all departments.
-- =====================================================

SELECT name
FROM department;

-- =====================================================
-- QUESTION 5
-- Select employees who work in IT department.
-- =====================================================

SELECT e.*
FROM employee e
JOIN department d
ON e.department_id = d.department_id
WHERE d.name = 'IT';

-- =====================================================
-- QUESTION 6
-- Employees whose names start with 'J'
-- =====================================================

SELECT *
FROM employee
WHERE name LIKE 'J%';

-- =====================================================
-- QUESTION 7
-- Employees whose names end with 'e'
-- =====================================================

SELECT *
FROM employee
WHERE name LIKE '%e';

-- =====================================================
-- QUESTION 8
-- Employees whose names contain 'a'
-- =====================================================

SELECT *
FROM employee
WHERE name LIKE '%a%';

-- =====================================================
-- QUESTION 9
-- Employees whose names are exactly 9 characters
-- =====================================================

SELECT *
FROM employee
WHERE LENGTH(name) = 9;

-- =====================================================
-- QUESTION 10
-- Employees whose second character is 'o'
-- =====================================================

SELECT *
FROM employee
WHERE name LIKE '_o%';

-- =====================================================
-- QUESTION 11
-- Employees hired in 2020
-- =====================================================

SELECT *
FROM employee
WHERE YEAR(hire_date) = 2020;

-- =====================================================
-- QUESTION 12
-- Employees hired in January
-- =====================================================

SELECT *
FROM employee
WHERE MONTH(hire_date) = 1;

-- =====================================================
-- QUESTION 13
-- Employees hired before 2019
-- =====================================================

SELECT *
FROM employee
WHERE hire_date < '2019-01-01';

-- =====================================================
-- QUESTION 14
-- Employees hired on or after March 1, 2021
-- =====================================================

SELECT *
FROM employee
WHERE hire_date >= '2021-03-01';

-- =====================================================
-- QUESTION 15
-- Employees hired in last 2 years
-- =====================================================

SELECT *
FROM employee
WHERE hire_date >= CURRENT_DATE - INTERVAL 2 YEAR;

-- =====================================================
-- QUESTION 16
-- Total salary of all employees
-- =====================================================

SELECT SUM(salary) AS total_salary
FROM employee;

-- =====================================================
-- QUESTION 17
-- Average salary of employees
-- =====================================================

SELECT AVG(salary) AS average_salary
FROM employee;

-- =====================================================
-- QUESTION 18
-- Minimum salary
-- =====================================================

SELECT MIN(salary) AS minimum_salary
FROM employee;

-- =====================================================
-- QUESTION 19
-- Number of employees in each department
-- =====================================================

SELECT department_id, COUNT(*) AS employee_count
FROM employee
GROUP BY department_id;

-- =====================================================
-- QUESTION 20
-- Average salary in each department
-- =====================================================

SELECT department_id, AVG(salary) AS average_salary
FROM employee
GROUP BY department_id;

-- =====================================================
-- QUESTION 21
-- Total salary for each department
-- =====================================================

SELECT department_id, SUM(salary) AS total_salary
FROM employee
GROUP BY department_id;

-- =====================================================
-- QUESTION 22
-- Average age in each department
-- =====================================================

SELECT department_id, AVG(age) AS average_age
FROM employee
GROUP BY department_id;

-- =====================================================
-- QUESTION 23
-- Number of employees hired each year
-- =====================================================

SELECT YEAR(hire_date) AS hire_year,
COUNT(*) AS employee_count
FROM employee
GROUP BY YEAR(hire_date);

-- =====================================================
-- QUESTION 24
-- Highest salary in each department
-- =====================================================

SELECT department_id, MAX(salary) AS highest_salary
FROM employee
GROUP BY department_id;

-- =====================================================
-- QUESTION 25
-- Department with highest average salary
-- =====================================================

SELECT department_id, AVG(salary) AS avg_salary
FROM employee
GROUP BY department_id
ORDER BY avg_salary DESC
LIMIT 1;

-- =====================================================
-- QUESTION 26
-- Departments with more than 2 employees
-- =====================================================

SELECT department_id, COUNT(*) AS employee_count
FROM employee
GROUP BY department_id
HAVING COUNT(*) > 2;

-- =====================================================
-- QUESTION 27
-- Departments with average salary greater than 55000
-- =====================================================

SELECT department_id, AVG(salary) AS avg_salary
FROM employee
GROUP BY department_id
HAVING AVG(salary) > 55000;

-- =====================================================
-- QUESTION 28
-- Years with more than 1 employee hired
-- =====================================================

SELECT YEAR(hire_date) AS hire_year,
COUNT(*) AS employee_count
FROM employee
GROUP BY YEAR(hire_date)
HAVING COUNT(*) > 1;

-- =====================================================
-- QUESTION 29
-- Departments with total salary less than 100000
-- =====================================================

SELECT department_id, SUM(salary) AS total_salary
FROM employee
GROUP BY department_id
HAVING SUM(salary) < 100000;

-- =====================================================
-- QUESTION 30
-- Departments with maximum salary above 75000
-- =====================================================

SELECT department_id, MAX(salary) AS max_salary
FROM employee
GROUP BY department_id
HAVING MAX(salary) > 75000;

-- =====================================================
-- QUESTION 31
-- Employees ordered by salary ascending
-- =====================================================

SELECT *
FROM employee
ORDER BY salary ASC;

-- =====================================================
-- QUESTION 32
-- Employees ordered by age descending
-- =====================================================

SELECT *
FROM employee
ORDER BY age DESC;

-- =====================================================
-- QUESTION 33
-- Employees ordered by hire date ascending
-- =====================================================

SELECT *
FROM employee
ORDER BY hire_date ASC;

-- =====================================================
-- QUESTION 34
-- Employees ordered by department then salary
-- =====================================================

SELECT *
FROM employee
ORDER BY department_id, salary;

-- =====================================================
-- QUESTION 35
-- Departments ordered by total salary
-- =====================================================

SELECT department_id, SUM(salary) AS total_salary
FROM employee
GROUP BY department_id
ORDER BY total_salary DESC;

-- =====================================================
-- QUESTION 36
-- Employee names with department names
-- =====================================================

SELECT e.name AS employee_name,
d.name AS department_name
FROM employee e
JOIN department d
ON e.department_id = d.department_id;

-- =====================================================
-- QUESTION 37
-- Project names with department names
-- =====================================================

SELECT p.name AS project_name,
d.name AS department_name
FROM project p
JOIN department d
ON p.department_id = d.department_id;

-- =====================================================
-- QUESTION 38
-- Employee names with project names
-- =====================================================

SELECT e.name AS employee_name,
p.name AS project_name
FROM employee e
JOIN project p
ON e.department_id = p.department_id;

-- =====================================================
-- QUESTION 39
-- All employees and departments including no department
-- =====================================================

SELECT e.name AS employee_name,
d.name AS department_name
FROM employee e
LEFT JOIN department d
ON e.department_id = d.department_id;

-- =====================================================
-- QUESTION 40
-- All departments and employees including empty departments
-- =====================================================

SELECT d.name AS department_name,
e.name AS employee_name
FROM department d
LEFT JOIN employee e
ON d.department_id = e.department_id;

-- =====================================================
-- QUESTION 41
-- Employees not assigned to any project
-- =====================================================

SELECT e.name
FROM employee e
LEFT JOIN project p
ON e.department_id = p.department_id
WHERE p.project_id IS NULL;

-- =====================================================
-- QUESTION 42
-- Employees and number of projects in their department
-- =====================================================

SELECT e.name,
COUNT(p.project_id) AS project_count
FROM employee e
LEFT JOIN project p
ON e.department_id = p.department_id
GROUP BY e.name;

-- =====================================================
-- QUESTION 43
-- Departments with no employees
-- =====================================================

SELECT d.name
FROM department d
LEFT JOIN employee e
ON d.department_id = e.department_id
WHERE e.emp_id IS NULL;

-- =====================================================
-- QUESTION 44
-- Employees in same department as John Doe
-- =====================================================

SELECT name
FROM employee
WHERE department_id = (
    SELECT department_id
    FROM employee
    WHERE name = 'John Doe'
);

-- =====================================================
-- QUESTION 45
-- Department name with highest average salary
-- =====================================================

SELECT d.name, AVG(e.salary) AS avg_salary
FROM employee e
JOIN department d
ON e.department_id = d.department_id
GROUP BY d.name
ORDER BY avg_salary DESC
LIMIT 1;

-- =====================================================
-- QUESTION 46
-- Employee with highest salary
-- =====================================================

SELECT *
FROM employee
WHERE salary = (
    SELECT MAX(salary)
    FROM employee
);

-- =====================================================
-- QUESTION 47
-- Employees earning above average salary
-- =====================================================

SELECT *
FROM employee
WHERE salary > (
    SELECT AVG(salary)
    FROM employee
);

-- =====================================================
-- QUESTION 48
-- Second highest salary
-- =====================================================

SELECT MAX(salary) AS second_highest_salary
FROM employee
WHERE salary < (
    SELECT MAX(salary)
    FROM employee
);

-- =====================================================
-- QUESTION 49
-- Department with most employees
-- =====================================================

SELECT department_id, COUNT(*) AS employee_count
FROM employee
GROUP BY department_id
ORDER BY employee_count DESC
LIMIT 1;

-- =====================================================
-- QUESTION 50
-- Employees earning more than department average
-- =====================================================

SELECT e.name, e.salary
FROM employee e
WHERE e.salary > (
    SELECT AVG(salary)
    FROM employee
    WHERE department_id = e.department_id
);

-- =====================================================
-- QUESTION 51
-- Third highest salary
-- =====================================================

SELECT DISTINCT salary
FROM employee
ORDER BY salary DESC
LIMIT 1 OFFSET 2;

-- =====================================================
-- QUESTION 52
-- Employees older than all employees in HR
-- =====================================================

SELECT *
FROM employee
WHERE age > ALL (
    SELECT age
    FROM employee
    WHERE department_id = (
        SELECT department_id
        FROM department
        WHERE name = 'HR'
    )
);

-- =====================================================
-- QUESTION 53
-- Departments with average salary greater than 55000
-- =====================================================

SELECT department_id, AVG(salary) AS avg_salary
FROM employee
GROUP BY department_id
HAVING AVG(salary) > 55000;

-- =====================================================
-- QUESTION 54
-- Employees working in department with at least 2 projects
-- =====================================================

SELECT *
FROM employee
WHERE department_id IN (
    SELECT department_id
    FROM project
    GROUP BY department_id
    HAVING COUNT(*) >= 2
);

-- =====================================================
-- QUESTION 55
-- Employees hired same date as Jane Smith
-- =====================================================

SELECT *
FROM employee
WHERE hire_date = (
    SELECT hire_date
    FROM employee
    WHERE name = 'Jane Smith'
);

-- =====================================================
-- QUESTION 56
-- Total salary of employees hired in 2020
-- =====================================================

SELECT SUM(salary) AS total_salary
FROM employee
WHERE YEAR(hire_date) = 2020;

-- =====================================================
-- QUESTION 57
-- Average salary in each department ordered descending
-- =====================================================

SELECT department_id,
AVG(salary) AS avg_salary
FROM employee
GROUP BY department_id
ORDER BY avg_salary DESC;

-- =====================================================
-- QUESTION 58
-- Departments with more than 1 employee and average salary > 55000
-- =====================================================

SELECT department_id,
COUNT(*) AS employee_count,
AVG(salary) AS avg_salary
FROM employee
GROUP BY department_id
HAVING COUNT(*) > 1
AND AVG(salary) > 55000;

-- =====================================================
-- QUESTION 59
-- Employees hired in last 2 years ordered by hire date
-- =====================================================

SELECT *
FROM employee
WHERE hire_date >= CURRENT_DATE - INTERVAL 2 YEAR
ORDER BY hire_date;

-- =====================================================
-- QUESTION 60
-- Total employees and average salary for departments with >2 employees
-- =====================================================

SELECT department_id,
COUNT(*) AS total_employees,
AVG(salary) AS average_salary
FROM employee
GROUP BY department_id
HAVING COUNT(*) > 2;

-- =====================================================
-- QUESTION 61
-- Employees whose salary is above department average
-- =====================================================

SELECT name, salary
FROM employee e
WHERE salary > (
    SELECT AVG(salary)
    FROM employee
    WHERE department_id = e.department_id
);

-- =====================================================
-- QUESTION 62
-- Employees hired on same date as oldest employee
-- =====================================================

SELECT name
FROM employee
WHERE hire_date = (
    SELECT hire_date
    FROM employee
    ORDER BY age DESC
    LIMIT 1
);

-- =====================================================
-- QUESTION 63
-- Department names with total projects ordered by projects
-- =====================================================

SELECT d.name,
COUNT(p.project_id) AS total_projects
FROM department d
LEFT JOIN project p
ON d.department_id = p.department_id
GROUP BY d.name
ORDER BY total_projects DESC;

-- =====================================================
-- QUESTION 64
-- Employee with highest salary in each department
-- =====================================================

SELECT e.*
FROM employee e
WHERE salary = (
    SELECT MAX(salary)
    FROM employee
    WHERE department_id = e.department_id
);

-- =====================================================
-- QUESTION 65
-- Employees older than average age in their department
-- =====================================================

SELECT name, age, salary
FROM employee e
WHERE age > (
    SELECT AVG(age)
    FROM employee
    WHERE department_id = e.department_id
);
