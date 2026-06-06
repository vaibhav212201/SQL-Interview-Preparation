## Problem

Retrieve employee name, department name and salary sorted from highest to lowest salary.

## SQL Query

```sql
SELECT e.emp_name,
       d.department_name,
       e.salary
FROM Employees e
INNER JOIN Departments d
ON e.dept_id = d.dept_id
ORDER BY e.salary DESC;
```

## Explanation

The query joins Employees and Departments.

ORDER BY salary DESC sorts employees from highest salary to lowest salary.

## Expected Output

| emp_name | department_name | salary |
|-----------|----------------|---------|
| Divya | IT | 97000 |
| Abhishek | IT | 95000 |
| Ruchi | IT | 92000 |

(Output may vary based on dataset)

## Concepts Used

- INNER JOIN
- ORDER BY
- DESC
- Sorting Data
