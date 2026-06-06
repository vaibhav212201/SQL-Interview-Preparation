## Problem

Find employees whose salary is greater than the average salary of their department.

## SQL Query

```sql
SELECT e.emp_name,
       d.department_name,
       e.salary
FROM Employees e
INNER JOIN Departments d
ON e.dept_id = d.dept_id
WHERE e.salary >
(
    SELECT AVG(e2.salary)
    FROM Employees e2
    WHERE e2.dept_id = e.dept_id
);
```

## Explanation

The query compares each employee's salary with the average salary of their department.

The subquery calculates the average salary for the employee's department.

Only employees earning above their department average are returned.

## Expected Output

| emp_name | department_name | salary |
|-----------|----------------|---------|
| Rohit | IT | 80000 |
| Mohit | IT | 85000 |
| Divya | IT | 97000 |

(Output may vary based on dataset)

## Concepts Used

- INNER JOIN
- Correlated Subquery
- AVG()
- WHERE
```
