## Problem

Retrieve employee names along with their department names.

## SQL Query

```sql
SELECT e.emp_name,
       d.department_name
FROM Employees e
INNER JOIN Departments d
ON e.dept_id = d.dept_id;
```

## Explanation

INNER JOIN returns only matching records from both tables.

The query joins Employees and Departments using dept_id.

## Expected Output

| emp_name | department_name |
|-----------|----------------|
| Rahul | IT |
| Aman | HR |
| Priya | Finance |

(Output may vary based on dataset)

## Concepts Used

- INNER JOIN
- Table Aliases
- ON Clause

## Interview Tip

INNER JOIN returns only matching rows from both tables.
