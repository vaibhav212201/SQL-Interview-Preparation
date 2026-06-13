# Q89 - Find The Department With The Maximum Number Of Employees

## Problem

Find the department that has the highest number of employees.

## SQL Query

```sql
SELECT d.department_name,
       COUNT(e.emp_id) AS employee_count
FROM Employees e
INNER JOIN Departments d
ON e.dept_id = d.dept_id
GROUP BY d.department_name
ORDER BY employee_count DESC
LIMIT 1;
```

## Explanation

The Employees and Departments tables are joined using dept_id.

COUNT() calculates the number of employees in each department.

GROUP BY creates department-wise employee counts.

ORDER BY sorts departments from highest employee count to lowest.

LIMIT 1 returns the department having the maximum number of employees.

## Expected Output

| department_name | employee_count |
|-----------------|---------------|
| IT | 11 |

(Output may vary based on dataset)

## Concepts Used

- INNER JOIN
- COUNT()
- GROUP BY
- ORDER BY
- LIMIT

## Interview Tip

Top 3 Departments By Employee Count:

```sql
SELECT d.department_name,
       COUNT(e.emp_id) AS employee_count
FROM Employees e
JOIN Departments d
ON e.dept_id = d.dept_id
GROUP BY d.department_name
ORDER BY employee_count DESC
LIMIT 3;
```

This is a common workforce analytics question.

## Alternative Solution Using CTE

```sql
WITH DepartmentCount AS
(
    SELECT dept_id,
           COUNT(*) AS employee_count
    FROM Employees
    GROUP BY dept_id
)

SELECT *
FROM DepartmentCount
WHERE employee_count =
(
    SELECT MAX(employee_count)
    FROM DepartmentCount
);
```

## Real-World Use Case

- Workforce planning
- Resource allocation
- Organization structure analysis
- HR reporting
