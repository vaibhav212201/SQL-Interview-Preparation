# Q1 - Find Employees Earning More Than 70000

## Problem

Retrieve all employees whose salary is greater than 70000.

## SQL Query

```sql
SELECT *
FROM Employees
WHERE salary > 70000;
```
## Explanation
WHERE clause filters rows based on a condition.

Only employees with salary greater than 70000 are returned.

## Expected Output

| emp_id | emp_name | salary |
|---------|----------|---------|
| 5 | Rohit | 80000 |
| 10 | Ankit | 90000 |
| 15 | Mohit | 85000 |

(Output may vary based on dataset)

## Concepts Used

- SELECT
- WHERE
- Comparison Operator (>)
