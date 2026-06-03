# Q15 - Count Employees in Each Department

## Problem

Find the number of employees working in each department.

## SQL Query

```sql
SELECT dept_id,
       COUNT(*) AS total_employees
FROM Employees
GROUP BY dept_id;
```

## Explanation

GROUP BY creates groups based on department.

COUNT(*) counts the number of employees in each department.

## Expected Output

| dept_id | total_employees |
|----------|----------------|
| 101 | 11 |
| 102 | 8 |
| 103 | 8 |
| 104 | 9 |
| 105 | 7 |
| 106 | 7 |

(Output may vary based on dataset)

## Concepts Used

- GROUP BY
- COUNT()
- Aggregate Functions
