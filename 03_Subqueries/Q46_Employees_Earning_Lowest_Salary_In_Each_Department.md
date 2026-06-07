## Problem

Find employees who earn the lowest salary in their respective department.

## SQL Query

```sql
SELECT *
FROM Employees e
WHERE salary =
(
    SELECT MIN(salary)
    FROM Employees
    WHERE dept_id = e.dept_id
);
```

## Explanation

This is a Correlated Subquery.

For each employee, the subquery finds the minimum salary in that employee's department.

The outer query returns only those employees whose salary matches the lowest salary of their department.

If multiple employees share the lowest salary in a department, all of them will be returned.

## Expected Output

| emp_id | emp_name | dept_id | salary |
|---------|----------|----------|---------|
| 6 | Simran | 102 | 45000 |
| 4 | Priya | 103 | 55000 |
| 14 | Riya | 104 | 47000 |
| ... | ... | ... | ... |

(Output may vary based on dataset)

## Concepts Used

- Correlated Subquery
- MIN()
- WHERE Clause
- Aggregate Functions
- Department-wise Analysis

## Interview Tip

Company Lowest Salary:

```sql
SELECT *
FROM Employees
WHERE salary =
(
    SELECT MIN(salary)
    FROM Employees
);
```

Department Lowest Salary:

```sql
SELECT *
FROM Employees e
WHERE salary =
(
    SELECT MIN(salary)
    FROM Employees
    WHERE dept_id = e.dept_id
);
```

The second query performs the comparison within each department instead of the entire company.

## Real-World Use Case

- Identifying lowest-paid employees by department
- Salary benchmarking
- Compensation review and HR analysis
