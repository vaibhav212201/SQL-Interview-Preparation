## Problem

Find the second highest salary from the Employees table.

## SQL Query

```sql
SELECT MAX(salary) AS second_highest_salary
FROM Employees
WHERE salary <
(
    SELECT MAX(salary)
    FROM Employees
);
```

## Explanation

The inner query finds the highest salary in the Employees table.

The outer query considers only salaries less than the highest salary.

MAX() is then used again to find the largest salary among the remaining salaries, which is the second highest salary.

## Expected Output

| second_highest_salary |
|----------------------|
| 95000 |

(Output may vary based on dataset)

## Concepts Used

- Subquery
- MAX()
- Nested Query
- Aggregate Functions

## Interview Tip

This is one of the most frequently asked SQL interview questions.

Alternative Solution:

```sql
SELECT DISTINCT salary
FROM Employees
ORDER BY salary DESC
LIMIT 1 OFFSET 1;
```

The MAX() + Subquery approach is generally preferred in interviews because it clearly demonstrates understanding of subqueries.

## Real-World Use Case

- Identifying the second highest-paid employee
- Ranking compensation packages
- Salary benchmarking
