## Problem

Find all departments whose average salary is greater than 70000.

## SQL Query

```sql
SELECT d.department_name,
       AVG(e.salary) AS average_salary
FROM Employees e
INNER JOIN Departments d
ON e.dept_id = d.dept_id
GROUP BY d.department_name
HAVING AVG(e.salary) > 70000;
```

## Explanation

The Employees and Departments tables are joined using dept_id.

AVG() calculates the average salary for each department.

GROUP BY creates separate groups for each department.

HAVING filters departments whose average salary is greater than 70000.

## Expected Output

| department_name | average_salary |
|----------------|----------------|
| IT | 83909 |
| Operations | 73600 |

(Output may vary based on dataset)

## Concepts Used

- INNER JOIN
- GROUP BY
- AVG()
- HAVING
- Aggregate Functions

## Interview Tip

HAVING is used with aggregate functions, whereas WHERE cannot directly filter aggregated results.
