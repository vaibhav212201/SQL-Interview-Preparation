# Q99 - Find The Department With The Highest Average Salary And More Than 5 Employees

## Problem

Find the department that:

1. Has more than 5 employees.
2. Has the highest average salary among those departments.

## SQL Query

```sql
SELECT d.department_name,
       COUNT(e.emp_id) AS employee_count,
       AVG(e.salary) AS average_salary
FROM Employees e
INNER JOIN Departments d
ON e.dept_id = d.dept_id
GROUP BY d.department_name
HAVING COUNT(e.emp_id) > 5
ORDER BY average_salary DESC
LIMIT 1;
```

## Explanation

The Employees and Departments tables are joined using dept_id.

COUNT() calculates the number of employees in each department.

AVG() calculates the average salary of each department.

HAVING filters departments having more than 5 employees.

ORDER BY sorts departments by average salary in descending order.

LIMIT 1 returns the department with the highest average salary.

## Expected Output

| department_name | employee_count | average_salary |
|-----------------|---------------|---------------|
| IT | 11 | 81272.73 |

(Output may vary based on dataset)

## Concepts Used

- INNER JOIN
- COUNT()
- AVG()
- GROUP BY
- HAVING
- ORDER BY
- LIMIT

## Interview Tip

Without Employee Count Condition:

```sql
SELECT dept_id,
       AVG(salary)
FROM Employees
GROUP BY dept_id
ORDER BY AVG(salary) DESC
LIMIT 1;
```

With Employee Count Condition:

```sql
HAVING COUNT(*) > 5
```

This adds an additional business rule to the query.

## Alternative Solution Using CTE

```sql
WITH DepartmentStats AS
(
    SELECT dept_id,
           COUNT(*) AS employee_count,
           AVG(salary) AS average_salary
    FROM Employees
    GROUP BY dept_id
)

SELECT *
FROM DepartmentStats
WHERE employee_count > 5
ORDER BY average_salary DESC
LIMIT 1;
```

## Real-World Use Case

- Workforce planning
- Department benchmarking
- Compensation analysis
- Executive reporting
