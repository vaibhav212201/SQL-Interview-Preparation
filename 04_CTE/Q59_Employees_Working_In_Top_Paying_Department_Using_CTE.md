# Q59 - Employees Working In The Top Paying Department Using CTE

## Problem

Find all employees who work in the department with the highest average salary using a Common Table Expression (CTE).

## SQL Query

```sql
WITH DepartmentAverageSalary AS
(
    SELECT dept_id,
           AVG(salary) AS average_salary
    FROM Employees
    GROUP BY dept_id
),

TopPayingDepartment AS
(
    SELECT dept_id
    FROM DepartmentAverageSalary
    WHERE average_salary =
    (
        SELECT MAX(average_salary)
        FROM DepartmentAverageSalary
    )
)

SELECT e.emp_id,
       e.emp_name,
       e.dept_id,
       e.salary
FROM Employees e
INNER JOIN TopPayingDepartment t
ON e.dept_id = t.dept_id;
```

## Explanation

The first CTE calculates the average salary of each department.

The second CTE identifies the department with the highest average salary.

The main query retrieves all employees belonging to that department.

This query combines multiple CTEs and demonstrates how one CTE can use the result of another CTE.

## Expected Output

| emp_id | emp_name | dept_id | salary |
|---------|----------|----------|---------|
| 1 | Rahul | 101 | 50000 |
| 3 | Neha | 101 | 70000 |
| 10 | Ankit | 101 | 90000 |
| 23 | Abhishek | 101 | 95000 |
| 43 | Divya | 101 | 97000 |
| ... | ... | ... | ... |

(Output may vary based on dataset)

## Concepts Used

- CTE (WITH Clause)
- Multiple CTEs
- AVG()
- MAX()
- GROUP BY
- INNER JOIN
- Aggregate Functions

## Interview Tip

A CTE can reference another CTE:

```sql
WITH CTE1 AS
(
    ...
),
CTE2 AS
(
    SELECT *
    FROM CTE1
)

SELECT *
FROM CTE2;
```

This makes complex business logic much easier to understand compared to deeply nested subqueries.

## Real-World Use Case

- Identifying employees in high-paying departments
- Compensation analysis
- Payroll reporting
- HR analytics dashboards
