# Q3 - Sort Employees By Salary (Highest to Lowest)

## Problem

Retrieve all employees and display them in descending order of salary.

## SQL Query

```sql
SELECT *
FROM Employees
ORDER BY salary DESC;
```

## Explanation

ORDER BY is used to sort records.

DESC sorts the salary from highest to lowest.

## Expected Output

| emp_id | emp_name | salary |
|---------|----------|---------|
| 43 | Divya | 97000 |
| 23 | Abhishek | 95000 |
| 49 | Ruchi | 92000 |
| ... | ... | ... |

(Output may vary based on dataset)

## Concepts Used

- SELECT
- ORDER BY
- DESC
- Sorting Data
