# Q12 - Find Highest Salary

## Problem

Find the highest salary among all employees.

## SQL Query

```sql
SELECT MAX(salary) AS highest_salary
FROM Employees;
```

## Explanation

MAX() returns the largest value from a column.

The query returns the highest salary in the Employees table.

## Expected Output

| highest_salary |
|---------------|
| 97000 |

(Output may vary based on dataset)

## Concepts Used

- MAX()
- Aggregate Functions
