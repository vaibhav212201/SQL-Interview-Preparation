# Q17 - Departments Having More Than 5 Employees

## Problem

Find all departments that have more than 5 employees.

## SQL Query

```sql
SELECT dept_id,
       COUNT(*) AS total_employees
FROM Employees
GROUP BY dept_id
HAVING COUNT(*) > 5;
```

## Explanation

GROUP BY creates groups based on department.

COUNT(*) calculates the number of employees in each department.

HAVING filters the grouped results.

Only departments with more than 5 employees are returned.

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
- HAVING
- COUNT()
- Aggregate Functions

## Interview Tip

WHERE filters rows before grouping.

HAVING filters groups after grouping.

Example:

```sql
SELECT dept_id,
       COUNT(*)
FROM Employees
GROUP BY dept_id
HAVING COUNT(*) > 5;
```

HAVING is commonly used with GROUP BY in interviews.
