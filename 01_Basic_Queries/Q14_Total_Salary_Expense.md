# Q14 - Find Total Salary Expense

## Problem

Calculate the total salary paid to all employees.

## SQL Query

```sql
SELECT SUM(salary) AS total_salary_expense
FROM Employees;
```

## Explanation

SUM() adds all values in a numeric column.

The query returns the total salary expense of the organization.

## Expected Output

| total_salary_expense |
|---------------------|
| 3400000 |

(Output may vary based on dataset)

## Concepts Used

- SUM()
- Aggregate Functions
