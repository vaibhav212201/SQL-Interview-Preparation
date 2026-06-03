# Q7 - Employees Joined After 2021

## Problem

Retrieve all employees who joined after January 1, 2021.

## SQL Query

```sql
SELECT *
FROM Employees
WHERE joining_date > '2021-01-01';
```

## Explanation

The WHERE clause filters records based on a condition.

Only employees whose joining date is greater than '2021-01-01' will be returned.

## Expected Output

| emp_id | emp_name | joining_date |
|---------|----------|-------------|
| 1 | Rahul | 2022-01-10 |
| 4 | Priya | 2023-02-01 |
| 6 | Simran | 2022-06-25 |
| ... | ... | ... |

(Output may vary based on dataset)

## Concepts Used

- SELECT
- WHERE
- Date Filtering
- Comparison Operator (>)
