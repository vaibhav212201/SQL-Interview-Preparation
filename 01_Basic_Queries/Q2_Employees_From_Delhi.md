# Q2 - Employees From Delhi

## Problem

Retrieve all employees who belong to Delhi.

## SQL Query

```sql
SELECT *
FROM Employees
WHERE city = 'Delhi';
```

## Explanation

WHERE clause filters rows based on the specified condition.

Only employees whose city is Delhi will be returned.

## Expected Output

| emp_id | emp_name | city |
|---------|----------|------|
| 1 | Rahul | Delhi |
| 3 | Neha | Delhi |
| ... | ... | ... |

(Output may vary based on dataset)

## Concepts Used

- SELECT
- WHERE
- String Filtering
