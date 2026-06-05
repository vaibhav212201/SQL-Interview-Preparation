## Problem

Find the highest salary in each department.

## SQL Query

```sql
SELECT d.department_name,
       MAX(e.salary) AS highest_salary
FROM Employees e
INNER JOIN Departments d
ON e.dept_id = d.dept_id
GROUP BY d.department_name;
```

## Explanation

The query groups employees by department.

MAX() returns the highest salary in each department.

## Expected Output

| department_name | highest_salary |
|----------------|---------------|
| IT | 97000 |
| HR | 60000 |
| Finance | 79000 |

(Output may vary based on dataset)

## Concepts Used

- INNER JOIN
- GROUP BY
- MAX()
- Aggregate Functions
