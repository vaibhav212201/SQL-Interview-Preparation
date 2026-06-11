# Q37 - Employees Working In Departments With More Than 8 Employees

## Problem

Find all employees who work in departments having more than 8 employees.

## SQL Query

```sql
SELECT *
FROM Employees
WHERE dept_id IN
(
    SELECT dept_id
    FROM Employees
    GROUP BY dept_id
    HAVING COUNT(*) > 8
);
```

## Explanation

The subquery finds departments having more than 8 employees.

The outer query retrieves all employees belonging to those departments.

The IN operator compares each employee's department with the departments returned by the subquery.

## Expected Output

Employees belonging to departments with more than 8 employees.

## Concepts Used

- Subquery
- IN
- GROUP BY
- HAVING
- COUNT()

## Interview Tip

The subquery returns a list of department IDs.

The outer query uses IN to filter matching employees.

This pattern is very common in SQL interviews.

## Real-World Use Case

- Team size analysis
- Workforce planning
- Department reporting
