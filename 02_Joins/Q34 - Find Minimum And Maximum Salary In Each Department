## Problem

Find the minimum and maximum salary for each department.

## SQL Query

```sql
SELECT d.department_name,
       MIN(e.salary) AS minimum_salary,
       MAX(e.salary) AS maximum_salary
FROM Employees e
INNER JOIN Departments d
ON e.dept_id = d.dept_id
GROUP BY d.department_name;
```

## Explanation

MIN() returns the lowest salary in a department.

MAX() returns the highest salary in a department.

GROUP BY creates department-wise groups.

## Expected Output

| department_name | minimum_salary | maximum_salary |
|----------------|---------------|---------------|
| IT | 50000 | 97000 |
| HR | 45000 | 60000 |

(Output may vary based on dataset)

## Concepts Used

- INNER JOIN
- MIN()
- MAX()
- GROUP BY
```
