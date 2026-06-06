## Problem

Find all employees who work in the department having the highest average salary.

## SQL Query

```sql
SELECT *
FROM Employees
WHERE dept_id =
(
    SELECT dept_id
    FROM Employees
    GROUP BY dept_id
    ORDER BY AVG(salary) DESC
    LIMIT 1
);
```

## Explanation

The subquery calculates the average salary for each department.

Departments are sorted in descending order of average salary.

LIMIT 1 returns the department with the highest average salary.

The outer query retrieves all employees belonging to that department.

## Expected Output

| emp_id | emp_name | dept_id |
|---------|----------|----------|
| 3 | Neha | 101 |
| 10 | Ankit | 101 |
| 23 | Abhishek | 101 |
| ... | ... | ... |

(Output may vary based on dataset)

## Concepts Used

- Subquery
- GROUP BY
- AVG()
- ORDER BY
- LIMIT
- Nested Query

## Interview Tip

This is a combination of:

- Aggregate Functions
- GROUP BY
- ORDER BY
- Subqueries

Such questions are very common in SQL interviews because they test multiple concepts together.
