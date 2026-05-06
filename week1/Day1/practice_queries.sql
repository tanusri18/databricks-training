-- =========================================
-- QUESTION 1
-- Select all columns from the Employee table.
-- =========================================

SELECT *
FROM employee;


-- =========================================
-- QUESTION 2
-- Select only the name and salary columns
-- from the Employee table.
-- =========================================

SELECT name, salary
FROM employee;


-- =========================================
-- QUESTION 3
-- Select employees who are older than 30.
-- =========================================

SELECT *
FROM employee
WHERE age > 30;


-- =========================================
-- QUESTION 4
-- Select the names of all departments.
-- =========================================

SELECT name
FROM department;


-- =========================================
-- QUESTION 5
-- Select employees who work in the IT department.
-- =========================================

SELECT e.*
FROM employee e
JOIN department d
ON e.department_id = d.department_id
WHERE d.name = 'IT';


-- =========================================
-- QUESTION 6
-- Select employees whose names start with 'J'.
-- =========================================

SELECT *
FROM employee
WHERE name LIKE 'J%';


-- =========================================
-- QUESTION 7
-- Select employees whose names end with 'e'.
-- =========================================

SELECT *
FROM employee
WHERE name LIKE '%e';


-- =========================================
-- QUESTION 8
-- Select employees whose names contain 'a'.
-- =========================================

SELECT *
FROM employee
WHERE name LIKE '%a%';


-- =========================================
-- QUESTION 9
-- Select employees whose names are exactly
-- 9 characters long.
-- =========================================

SELECT *
FROM employee
WHERE LENGTH(name) = 9;


-- =========================================
-- QUESTION 10
-- Select employees whose names have 'o'
-- as the second character.
-- =========================================

SELECT *
FROM employee
WHERE name LIKE '_o%';


-- =========================================
-- QUESTION 11
-- Select employees hired in the year 2020.
-- =========================================

SELECT *
FROM employee
WHERE YEAR(hire_date) = 2020;


-- =========================================
-- QUESTION 12
-- Select employees hired in January
-- of any year.
-- =========================================

SELECT *
FROM employee
WHERE MONTH(hire_date) = 1;


-- =========================================
-- QUESTION 13
-- Select employees hired before 2019.
-- =========================================

SELECT *
FROM employee
WHERE hire_date < '2019-01-01';


-- =========================================
-- QUESTION 14
-- Select employees hired on or after
-- March 1, 2021.
-- =========================================

SELECT *
FROM employee
WHERE hire_date >= '2021-03-01';


-- =========================================
-- QUESTION 15
-- Select employees hired in the last 2 years.
-- =========================================

SELECT *
FROM employee
WHERE hire_date >= DATE_SUB(CURDATE(), INTERVAL 2 YEAR);
