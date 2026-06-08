# Q51 - Employees Earning More Than Average Salary Using CTE

## Problem

Find all employees whose salary is greater than the average salary of the company using a Common Table Expression (CTE).

## SQL Query

```sql
WITH AverageSalary AS
(
    SELECT AVG(salary) AS avg_salary
    FROM Employees
)

SELECT *
FROM Employees
WHERE salary >
(
    SELECT avg_salary
    FROM AverageSalary
);
```

## Explanation

A Common Table Expression (CTE) creates a temporary result set that can be referenced within a query.

The CTE calculates the average salary of all employees.

The main query retrieves employees whose salary is greater than the average salary.

## Expected Output

| emp_id | emp_name | salary |
|---------|----------|---------|
| 10 | Ankit | 90000 |
| 23 | Abhishek | 95000 |
| 43 | Divya | 97000 |
| ... | ... | ... |

(Output may vary based on dataset)

## Concepts Used

- CTE (WITH Clause)
- AVG()
- Subquery
- Aggregate Functions

## Interview Tip

Without CTE:

```sql
SELECT *
FROM Employees
WHERE salary >
(
    SELECT AVG(salary)
    FROM Employees
);
```

With CTE:

```sql
WITH AverageSalary AS
(
    SELECT AVG(salary) AS avg_salary
    FROM Employees
)

SELECT *
FROM Employees
WHERE salary >
(
    SELECT avg_salary
    FROM AverageSalary
);
```

CTEs improve readability and make complex queries easier to maintain.

## Real-World Use Case

- Salary benchmarking
- Employee performance analysis
- HR reporting
