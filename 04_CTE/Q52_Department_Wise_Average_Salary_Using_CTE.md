# Q52 - Department Wise Average Salary Using CTE

## Problem

Find the average salary of employees in each department using a Common Table Expression (CTE).

## SQL Query

```sql
WITH DepartmentAverageSalary AS
(
    SELECT dept_id,
           AVG(salary) AS average_salary
    FROM Employees
    GROUP BY dept_id
)

SELECT *
FROM DepartmentAverageSalary;
```

## Explanation

The CTE calculates the average salary for each department.

The main query retrieves the result from the CTE.

Using a CTE makes the query more readable and reusable, especially in complex reports.

## Expected Output

| dept_id | average_salary |
|----------|---------------|
| 101 | 81272.73 |
| 102 | 53750.00 |
| 103 | 69500.00 |
| 104 | 62111.11 |
| 105 | 61571.43 |
| 106 | 73428.57 |

(Output may vary based on dataset)

## Concepts Used

- CTE (WITH Clause)
- AVG()
- GROUP BY
- Aggregate Functions

## Interview Tip

Without CTE:

```sql
SELECT dept_id,
       AVG(salary) AS average_salary
FROM Employees
GROUP BY dept_id;
```

With CTE:

```sql
WITH DepartmentAverageSalary AS
(
    SELECT dept_id,
           AVG(salary) AS average_salary
    FROM Employees
    GROUP BY dept_id
)

SELECT *
FROM DepartmentAverageSalary;
```

For simple queries both work, but CTEs become very useful when multiple calculations depend on the same result set.

## Real-World Use Case

- Department salary reports
- Payroll analysis
- HR dashboard development
