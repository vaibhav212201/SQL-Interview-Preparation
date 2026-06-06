## Problem

Find employees who earn the highest salary in their respective department.

## SQL Query

```sql
SELECT *
FROM Employees e
WHERE salary =
(
    SELECT MAX(salary)
    FROM Employees
    WHERE dept_id = e.dept_id
);
```

## Explanation

This is a Correlated Subquery.

For each employee, the subquery finds the maximum salary in that employee's department.

The outer query returns only those employees whose salary matches the highest salary of their department.

If multiple employees share the highest salary in a department, all of them will be returned.

## Expected Output

| emp_id | emp_name | dept_id | salary |
|---------|----------|----------|---------|
| 43 | Divya | 101 | 97000 |
| 22 | Tanya | 102 | 53000 |
| 39 | Komal | 103 | 79000 |
| ... | ... | ... | ... |

(Output may vary based on dataset)

## Concepts Used

- Correlated Subquery
- MAX()
- WHERE Clause
- Department-wise Analysis
- Aggregate Functions

## Interview Tip

Company Highest Salary:

```sql
SELECT *
FROM Employees
WHERE salary =
(
    SELECT MAX(salary)
    FROM Employees
);
```

Department Highest Salary:

```sql
SELECT *
FROM Employees e
WHERE salary =
(
    SELECT MAX(salary)
    FROM Employees
    WHERE dept_id = e.dept_id
);
```

The second query is more powerful because it performs the comparison within each department.

## Real-World Use Case

- Finding top performers in each department
- Promotion candidate identification
- Department-wise compensation analysis
