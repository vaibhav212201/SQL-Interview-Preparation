## Problem

Find departments where the total salary expense exceeds 500000.

## SQL Query

```sql
SELECT d.department_name,
       SUM(e.salary) AS total_salary
FROM Employees e
INNER JOIN Departments d
ON e.dept_id = d.dept_id
GROUP BY d.department_name
HAVING SUM(e.salary) > 500000;
```

## Explanation

SUM() calculates total salary for each department.

GROUP BY creates department-wise groups.

HAVING filters departments with total salary greater than 500000.

## Expected Output

| department_name | total_salary |
|----------------|-------------|
| IT | 923000 |
| Finance | 560000 |

(Output may vary based on dataset)

## Concepts Used

- INNER JOIN
- SUM()
- GROUP BY
- HAVING
