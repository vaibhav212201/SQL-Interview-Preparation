## Problem

Find all employees who work in the same department as 'Ankit'.

## SQL Query

```sql
SELECT *
FROM Employees
WHERE dept_id =
(
    SELECT dept_id
    FROM Employees
    WHERE emp_name = 'Ankit'
);
```

## Explanation

The subquery finds the department ID of Ankit.

The outer query retrieves all employees who belong to that department.

Since the subquery returns a single department ID, the = operator is used.

## Expected Output

| emp_id | emp_name | dept_id |
|---------|----------|----------|
| 1 | Rahul | 101 |
| 3 | Neha | 101 |
| 5 | Rohit | 101 |
| 10 | Ankit | 101 |
| ... | ... | ... |

(Output may vary based on dataset)

## Concepts Used

- Subquery
- WHERE Clause
- Single Value Subquery
- Nested Query

## Interview Tip

You can replace 'Ankit' with any employee name:

```sql
SELECT *
FROM Employees
WHERE dept_id =
(
    SELECT dept_id
    FROM Employees
    WHERE emp_name = 'Rahul'
);
```

This pattern is commonly asked in SQL interviews.

## Real-World Use Case

- Finding team members of a specific employee
- Reporting structure analysis
- Department-wise employee lookup
