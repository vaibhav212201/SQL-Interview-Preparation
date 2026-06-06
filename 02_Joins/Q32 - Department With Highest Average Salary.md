## Problem

Find the department having the highest average salary.

## SQL Query

```sql
SELECT d.department_name,
       AVG(e.salary) AS average_salary
FROM Employees e
INNER JOIN Departments d
ON e.dept_id = d.dept_id
GROUP BY d.department_name
ORDER BY average_salary DESC
LIMIT 1;
```

## Explanation

AVG() calculates department-wise average salary.

Departments are sorted in descending order of average salary.

LIMIT 1 returns the department with the highest average salary.

## Expected Output

| department_name | average_salary |
|----------------|----------------|
| IT | 83909 |

(Output may vary based on dataset)

## Concepts Used

- INNER JOIN
- AVG()
- GROUP BY
- ORDER BY
- LIMIT
```
