## Problem

Retrieve all employees who belong to the IT department.

## SQL Query

```sql
SELECT e.emp_name,
       d.department_name
FROM Employees e
INNER JOIN Departments d
ON e.dept_id = d.dept_id
WHERE d.department_name = 'IT';
```

## Explanation

The tables are joined using dept_id.

The WHERE clause filters only IT department employees.

## Expected Output

| emp_name | department_name |
|-----------|----------------|
| Rahul | IT |
| Rohit | IT |
| Ankit | IT |

(Output may vary based on dataset)

## Concepts Used

- INNER JOIN
- WHERE
- Filtering Joined Data
