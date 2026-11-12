SELECT * 
FROM employees 
WHERE department = 'HR';
SELECT * 
FROM employees 
WHERE salary > 45000 
  AND department IN ('Sales', 'IT');
SELECT * 
FROM employees 
WHERE LOWER(name) LIKE '%e%';
