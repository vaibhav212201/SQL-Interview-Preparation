## Problem

Find the number of employees working in each department.

## SQL Query

```sql
SELECT d.department_name,
       COUNT(e.emp_id) AS total_employees
FROM Departments d
INNER JOIN Employees e
ON d.dept_id = e.dept_id
GROUP BY d.department_name;
```

## Explanation

The tables are joined using dept_id.

GROUP BY creates a group for each department.

COUNT() calculates the number of employees in each department.

## Expected Output

| department_name | total_employees |
|-----------------|----------------|
| IT | 11 |
| HR | 8 |
| Finance | 8 |
| Sales | 9 |

(Output may vary based on dataset)

## Concepts Used

- INNER JOIN
- GROUP BY
- COUNT()
- Aggregate Functions

## Interview Tip

This is one of the most frequently asked JOIN interview questions.
