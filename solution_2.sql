# 1. Display all employees.

SELECT *
FROM employees;

# 2. Find employees with a salary greater than 70,000.
SELECT *
FROM employees
WHERE salary > 70000;

# 3. Display employee name and salary only.
SELECT name, salary
FROM employees;

#4. Find employees who work in department 101.
SELECT *
FROM employees
WHERE department_id = 101;

#5. Display employees from highest salary to lowest salary.
SELECT *
FROM employees
ORDER BY salary DESC;

#6. Find employees hired after January 1, 2023.
SELECT *
FROM employees
WHERE hire_date > '2023-01-01';

#7. Find employees whose salary is between 60,000 and 80,000.
SELECT *
FROM employees
WHERE salary BETWEEN 60000 AND 80000;

#8. Find the total number of employees.
SELECT COUNT(*) AS total_employees
FROM employees;

#ntermediate
#9. Find the highest salary.

SELECT MAX(salary) AS highest_salary
FROM employees;

#10. Find the lowest salary.
SELECT MIN(salary) AS lowest_salary
FROM employees;

#11. Find the average salary of all employees.
SELECT AVG(salary) AS average_salary
FROM employees;

#12. Find the number of employees in each department.
SELECT department_id,
       COUNT(*) AS total_employees
FROM employees
GROUP BY department_id;

#13. Find the average salary in each department.
SELECT department_id,
       AVG(salary) AS average_salary
FROM employees
GROUP BY department_id;

#14. Find departments that have more than 35 employees.
SELECT department_id,
       COUNT(*) AS total_employees
FROM employees
GROUP BY department_id
HAVING COUNT(*) > 35;

#15. Find the highest salary in each department.
SELECT department_id,
       MAX(salary) AS highest_salary
FROM employees
GROUP BY department_id;


#Subquery Practice
#19. Find employees earning more than the overall average salary.
SELECT *
FROM employees
WHERE salary > (
    SELECT AVG(salary)
    FROM employees
);

#20. Find employees earning the highest salary in the company.
SELECT *
FROM employees
WHERE salary = (
    SELECT MAX(salary)
    FROM employees
);