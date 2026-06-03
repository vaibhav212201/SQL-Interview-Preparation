# Q6 - Employees With Salary Between 50000 and 80000

## Problem

Retrieve all employees whose salary is between 50000 and 80000.

## SQL Query

```sql
SELECT *
FROM Employees
WHERE salary BETWEEN 50000 AND 80000;
```

## Explanation

BETWEEN is used to filter values within a specified range.

It includes both the lower limit (50000) and upper limit (80000).

## Expected Output

| emp_id | emp_name | salary |
|---------|----------|---------|
| 1 | Rahul | 50000 |
| 7 | Arjun | 75000 |
| 20 | Aditi | 69000 |
| ... | ... | ... |

(Output may vary based on dataset)

## Concepts Used

- WHERE
- BETWEEN
- Range Filtering
