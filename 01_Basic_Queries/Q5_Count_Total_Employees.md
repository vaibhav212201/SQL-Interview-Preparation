# Q5 - Count Total Employees

## Problem

Find the total number of employees present in the Employees table.

## SQL Query

```sql
SELECT COUNT(*) AS total_employees
FROM Employees;
```

## Explanation

COUNT(*) counts all rows in the table.

AS total_employees assigns an alias to the output column.

## Expected Output

| total_employees |
|----------------|
| 50 |

(Output may vary based on dataset)

## Concepts Used

- COUNT()
- Aggregate Functions
- Alias (AS)
