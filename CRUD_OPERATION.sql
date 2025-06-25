SELECT * FROM employee_crud_opertions.employees;
 use employee_crud_opertions;
INSERT INTO employees (id, name, department, salary, hire_date)
VALUES
  (1, 'Chandan', 'Developer', 50000.0, '2024-03-22');
 -- Updating the salary of an employee
UPDATE employees
SET salary = 65000.0
WHERE id = 1;
-- Updating the department of an employee
UPDATE employees
SET department = 'HR'
WHERE id = 1;

 -- Deleting an employee
DELETE FROM employees
WHERE id = 1;

 -- Inserting data with null values
INSERT INTO employees (id, name, department, salary, hire_date)
VALUES
  (2, 'Anjali', NULL, NULL, '2021-01-01');

-- Updating an employee to set a null value
UPDATE employees
SET salary = NULL
WHERE id = 1;

-- Using COALESCE to handle null values
SELECT name, COALESCE(department, 'Unknown') AS department
FROM employees;