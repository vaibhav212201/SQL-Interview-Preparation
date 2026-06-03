# Q8 - Top 5 Highest Paid Employees

## Problem

Retrieve the top 5 highest-paid employees from the Employees table.

## SQL Query

```sql
SELECT *
FROM Employees
ORDER BY salary DESC
LIMIT 5;
```

## Explanation

ORDER BY salary DESC sorts employees from highest salary to lowest salary.

LIMIT 5 returns only the first 5 records.

## Expected Output

| emp_id | emp_name | salary |
|---------|----------|---------|
| 43 | Divya | 97000 |
| 23 | Abhishek | 95000 |
| 49 | Ruchi | 92000 |
| 10 | Ankit | 90000 |
| 31 | Anjali | 88000 |

(Output may vary based on dataset)

## Concepts Used

- ORDER BY
- DESC
- LIMIT
- Top N Records
