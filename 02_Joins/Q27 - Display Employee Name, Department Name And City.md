## Problem

Retrieve employee name, department name and city.

## SQL Query

```sql
SELECT e.emp_name,
       d.department_name,
       e.city
FROM Employees e
INNER JOIN Departments d
ON e.dept_id = d.dept_id;
```

## Explanation

The query joins Employees and Departments tables.

It displays employee name, department name and city together.

## Expected Output

| emp_name | department_name | city |
|-----------|----------------|------|
| Rahul | IT | Delhi |
| Aman | HR | Noida |

(Output may vary based on dataset)

## Concepts Used

- INNER JOIN
- Multiple Column Selection
- Table Aliases
