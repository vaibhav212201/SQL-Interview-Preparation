# Q60 - Departments Having More Employees Than The Average Department Size Using CTE

## Problem

Find departments that have more employees than the average number of employees across all departments using a Common Table Expression (CTE).

## SQL Query

```sql
WITH DepartmentEmployeeCount AS
(
    SELECT dept_id,
           COUNT(*) AS employee_count
    FROM Employees
    GROUP BY dept_id
),

AverageDepartmentSize AS
(
    SELECT AVG(employee_count) AS avg_employee_count
    FROM DepartmentEmployeeCount
)

SELECT d.dept_id,
       d.employee_count
FROM DepartmentEmployeeCount d
CROSS JOIN AverageDepartmentSize a
WHERE d.employee_count > a.avg_employee_count;
```

## Explanation

The first CTE calculates the number of employees in each department.

The second CTE calculates the average department size using the results of the first CTE.

The main query compares each department's employee count with the average department size.

Only departments having more employees than the average department size are returned.

## Expected Output

| dept_id | employee_count |
|----------|---------------|
| 101 | 11 |
| 104 | 9 |

(Output may vary based on dataset)

## Concepts Used

- CTE (WITH Clause)
- Multiple CTEs
- COUNT()
- AVG()
- GROUP BY
- CROSS JOIN
- Aggregate Functions

## Interview Tip

This query demonstrates a common reporting pattern:

1. Calculate department-level metrics.
2. Calculate company-level metrics.
3. Compare department metrics with company metrics.

This pattern appears frequently in SQL interviews and real-world analytics projects.

## Real-World Use Case

- Workforce planning
- Department resource analysis
- Organization structure reporting
- HR analytics dashboards

## Query Flow

```text
Employees
    ↓
DepartmentEmployeeCount CTE
    ↓
AverageDepartmentSize CTE
    ↓
Final Comparison
```
