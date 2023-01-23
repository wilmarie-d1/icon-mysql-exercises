USE employees;

/**Find all employees with first names 'Irena', 'Vidya', or 'Maya' — 709 rows (Hint: Use IN).**/
SELECT first_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya' )
ORDER BY first_name, last_name;

# Update your query for 'Irena', 'Vidya', or 'Maya' to use OR instead of IN
SELECT first_name
FROM employees
WHERE first_name = 'Irena'
   OR first_name = 'Vidya'
   OR first_name = 'Maya';

# Add a condition to the previous query to find everybody with those names who is also male
SELECT first_name
FROM employees
WHERE first_name IN ('Irena','Vidya', 'Maya')
   AND gender = 'M';

/**Find all employees whose last name starts with 'E'**/
SELECT last_name
FROM employees
WHERE last_name LIKE 'E%';
# WHERE LEFT(last_name , 1) IN ('E');

/**Find all employees with a 'q' in their last name**/
SELECT last_name
FROM employees
WHERE last_name LIKE '%q%';


# Find all employees whose last name starts or ends with 'E'
SELECT last_name
FROM employees
WHERE last_name LIKE 'E%' OR last_name LIKE '%e';
# WHERE LEFT(last_name , 1) IN ('E')
#   OR RIGHT(last_name, 1) IN ('E');


# Duplicate the previous query and update it to find all employees whose last name starts and ends with 'E'
SELECT last_name
FROM employees
WHERE last_name LIKE 'E%';


# Find all employees with a 'q' in their last name but not 'qu'

SELECT * FROM employees WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%'