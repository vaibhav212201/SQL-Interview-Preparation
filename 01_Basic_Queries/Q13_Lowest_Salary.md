# Q13 - Find Lowest Salary

## Problem

Find the lowest salary among all employees.

## SQL Query

```sql
SELECT MIN(salary) AS lowest_salary
FROM Employees;
```

## Explanation

MIN() returns the smallest value from a column.

The query returns the minimum salary in the Employees table.

## Expected Output

| lowest_salary |
|--------------|
| 45000 |

(Output may vary based on dataset)

## Concepts Used

- MIN()
- Aggregate Functions
