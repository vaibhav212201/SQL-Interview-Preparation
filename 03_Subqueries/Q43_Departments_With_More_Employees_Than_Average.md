## Problem

Find departments that have more employees than the average number of employees across all departments.

## SQL Query

```sql
SELECT dept_id,
       COUNT(*) AS total_employees
FROM Employees
GROUP BY dept_id
HAVING COUNT(*) >
(
    SELECT AVG(employee_count)
    FROM
    (
        SELECT COUNT(*) AS employee_count
        FROM Employees
        GROUP BY dept_id
    ) AS dept_counts
);
```

## Explanation

The inner subquery calculates the employee count for each department.

The outer subquery calculates the average department size.

The main query finds departments whose employee count is greater than this average.

## Expected Output

| dept_id | total_employees |
|----------|----------------|
| 101 | 11 |
| 104 | 9 |

(Output may vary based on dataset)

## Concepts Used

- Subquery
- Nested Subquery
- GROUP BY
- HAVING
- COUNT()
- AVG()

## Interview Tip

This is an example of a multi-level subquery.

The query demonstrates how aggregate results can be compared against another aggregated result.

## Real-World Use Case

- Workforce distribution analysis
- Department resource planning
- Organization structure reporting
