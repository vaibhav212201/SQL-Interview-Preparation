## Problem

Find all employees who work in departments that have more than 8 employees.

## SQL Query

```sql
SELECT *
FROM Employees
WHERE dept_id IN
(
    SELECT dept_id
    FROM Employees
    GROUP BY dept_id
    HAVING COUNT(*) > 8
);
```

## Explanation

The subquery identifies departments having more than 8 employees.

The outer query retrieves all employees belonging to those departments.

The IN operator is used because the subquery may return multiple department IDs.

## Expected Output

| emp_id | emp_name | dept_id |
|---------|----------|----------|
| 1 | Rahul | 101 |
| 3 | Neha | 101 |
| 8 | Karan | 104 |
| ... | ... | ... |

(Output may vary based on dataset)

## Concepts Used

- Subquery
- IN Operator
- GROUP BY
- HAVING
- COUNT()

## Interview Tip

Use:

```sql
WHERE dept_id IN (...)
```

when a subquery can return multiple values.

Use:

```sql
WHERE dept_id = (...)
```

only when the subquery returns a single value.

## Real-World Use Case

- Finding employees in large teams
- Workforce allocation analysis
- Department-wise employee reporting
