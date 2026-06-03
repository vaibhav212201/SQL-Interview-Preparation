# Q11 - Find Average Salary of Employees

## Problem

Find the average salary of all employees.

## SQL Query

```sql
SELECT AVG(salary) AS average_salary
FROM Employees;
```

## Explanation

AVG() calculates the average value of a numeric column.

The query returns the average salary of all employees.

## Expected Output

| average_salary |
|----------------|
| 69000 |

(Output may vary based on dataset)

## Concepts Used

- AVG()
- Aggregate Functions
- Alias (AS)
