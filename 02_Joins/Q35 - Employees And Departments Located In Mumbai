## Problem

Retrieve employee names and department names for employees located in Mumbai.

## SQL Query

```sql
SELECT e.emp_name,
       d.department_name,
       e.city
FROM Employees e
INNER JOIN Departments d
ON e.dept_id = d.dept_id
WHERE e.city = 'Mumbai';
```

## Explanation

The query joins Employees and Departments tables.

The WHERE clause filters only employees from Mumbai.

## Expected Output

| emp_name | department_name | city |
|-----------|----------------|------|
| Priya | Finance | Mumbai |
| Arjun | Finance | Mumbai |
| Tanya | HR | Mumbai |

(Output may vary based on dataset)

## Concepts Used

- INNER JOIN
- WHERE
- Filtering Joined Data
```
