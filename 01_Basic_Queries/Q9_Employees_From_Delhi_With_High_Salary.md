# Q9 - Employees From Delhi Having Salary Greater Than 60000

## Problem

Retrieve all employees who belong to Delhi and have a salary greater than 60000.

## SQL Query

```sql
SELECT *
FROM Employees
WHERE city = 'Delhi'
AND salary > 60000;
```

## Explanation

The AND operator is used to combine multiple conditions.

The query returns only those employees who:

1. Belong to Delhi
2. Have a salary greater than 60000

Both conditions must be true.

## Expected Output

| emp_id | emp_name | city | salary |
|---------|----------|------|---------|
| 3 | Neha | Delhi | 70000 |
| 20 | Aditi | Delhi | 69000 |
| 29 | Kavya | Delhi | 71000 |
| ... | ... | ... | ... |

(Output may vary based on dataset)

## Concepts Used

- WHERE
- AND
- Multiple Conditions
- Filtering Data
