## Problem

Find the employee(s) who earn the highest salary in the company.

## SQL Query

```sql
SELECT *
FROM Employees
WHERE salary =
(
    SELECT MAX(salary)
    FROM Employees
);
```

## Explanation

The subquery finds the highest salary in the Employees table using MAX().

The outer query returns all employees whose salary matches the highest salary.

This approach works even if multiple employees share the highest salary.

## Expected Output

| emp_id | emp_name | salary |
|---------|----------|---------|
| 43 | Divya | 97000 |

(Output may vary based on dataset)

## Concepts Used

- Subquery
- MAX()
- WHERE Clause
- Nested Query

## Interview Tip

Avoid this approach:

```sql
SELECT *
FROM Employees
ORDER BY salary DESC
LIMIT 1;
```

Because it returns only one employee.

If multiple employees have the same highest salary, the MAX() subquery solution is more accurate and interview-friendly.

## Real-World Use Case

- Highest-paid employee in a company
- Top performer analysis
- Executive compensation reporting
