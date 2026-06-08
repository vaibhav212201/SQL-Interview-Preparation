# Q56 - Departments Having Average Salary Greater Than Company Average Using CTE

## Problem

Find departments whose average salary is greater than the overall average salary of the company using a Common Table Expression (CTE).

## SQL Query

```sql
WITH CompanyAverageSalary AS
(
    SELECT AVG(salary) AS company_avg_salary
    FROM Employees
),

DepartmentAverageSalary AS
(
    SELECT dept_id,
           AVG(salary) AS department_avg_salary
    FROM Employees
    GROUP BY dept_id
)

SELECT d.dept_id,
       d.department_avg_salary
FROM DepartmentAverageSalary d
CROSS JOIN CompanyAverageSalary c
WHERE d.department_avg_salary > c.company_avg_salary;
```

## Explanation

The first CTE calculates the overall average salary of the company.

The second CTE calculates the average salary for each department.

The main query compares each department's average salary with the company's average salary.

Only departments whose average salary is greater than the company average are returned.

## Expected Output

| dept_id | department_avg_salary |
|----------|----------------------|
| 101 | 81272.73 |
| 106 | 73428.57 |
| ... | ... |

(Output may vary based on dataset)

## Concepts Used

- CTE (WITH Clause)
- Multiple CTEs
- AVG()
- GROUP BY
- CROSS JOIN
- Aggregate Functions

## Interview Tip

A query can contain multiple CTEs:

```sql
WITH CTE1 AS
(
    ...
),
CTE2 AS
(
    ...
)
SELECT *
FROM CTE2;
```

This makes complex queries much easier to read than deeply nested subqueries.

## Real-World Use Case

- Department performance analysis
- Payroll and compensation reporting
- HR analytics dashboards
