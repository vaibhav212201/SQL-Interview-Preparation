## Problem

Find employees whose salary is greater than the average salary of their respective department.

## SQL Query

```sql
SELECT *
FROM Employees e
WHERE salary >
(
    SELECT AVG(salary)
    FROM Employees
    WHERE dept_id = e.dept_id
);
```

## Explanation

This is a Correlated Subquery.

The subquery calculates the average salary for the department of the current employee.

The outer query returns employees whose salary is greater than their department's average salary.

The subquery executes once for each row processed by the outer query.

## Expected Output

| emp_id | emp_name | dept_id | salary |
|---------|----------|----------|---------|
| 10 | Ankit | 101 | 90000 |
| 23 | Abhishek | 101 | 95000 |
| 43 | Divya | 101 | 97000 |
| ... | ... | ... | ... |

(Output may vary based on dataset)

## Concepts Used

- Correlated Subquery
- AVG()
- WHERE Clause
- Nested Query
- Department-wise Analysis

## Interview Tip

Difference Between Subquery and Correlated Subquery:

Normal Subquery:

```sql
SELECT *
FROM Employees
WHERE salary >
(
    SELECT AVG(salary)
    FROM Employees
);
```

Correlated Subquery:

```sql
SELECT *
FROM Employees e
WHERE salary >
(
    SELECT AVG(salary)
    FROM Employees
    WHERE dept_id = e.dept_id
);
```

A correlated subquery depends on the outer query and executes for each row.

## Real-World Use Case

- Identifying high performers within a team
- Department-wise compensation analysis
- Employee appraisal and promotion decisions
