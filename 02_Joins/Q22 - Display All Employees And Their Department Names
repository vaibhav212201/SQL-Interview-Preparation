## Problem

Retrieve all employees along with their department names, including employees whose department information may not exist.

## SQL Query

```sql
SELECT e.emp_name,
       d.department_name
FROM Employees e
LEFT JOIN Departments d
ON e.dept_id = d.dept_id;
```

## Explanation

LEFT JOIN returns all records from the left table (Employees).

Matching records from Departments are returned when available.

## Expected Output

| emp_name | department_name |
|-----------|----------------|
| Rahul | IT |
| Aman | HR |

(Output may vary based on dataset)

## Concepts Used

- LEFT JOIN
- Table Aliases
- ON Clause

## Interview Tip

LEFT JOIN keeps all rows from the left table.
