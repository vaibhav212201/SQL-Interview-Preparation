# Q58 - Find The Top Paying Department Using CTE

## Problem

Find the department with the highest average salary using a Common Table Expression (CTE).

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
FROM DepartmentAverageSalary
WHERE average_salary =
(
    SELECT MAX(average_salary)
    FROM DepartmentAverageSalary
);
```

## Explanation

The CTE calculates the average salary for each department.

The subquery finds the highest average salary among all departments.

The main query returns the department whose average salary matches the highest average salary.

If multiple departments have the same highest average salary, all of them will be returned.

## Expected Output

| dept_id | average_salary |
|----------|---------------|
| 101 | 81272.73 |

(Output may vary based on dataset)

## Concepts Used

- CTE (WITH Clause)
- AVG()
- GROUP BY
- MAX()
- Subquery
- Aggregate Functions

## Interview Tip

Step 1:

```sql
SELECT dept_id,
       AVG(salary)
FROM Employees
GROUP BY dept_id;
```

Step 2:

Find the highest average salary.

Step 3:

Return the department having that value.

This is a very common SQL interview question because it combines:

- CTE
- GROUP BY
- Aggregate Functions
- Subquery

## Real-World Use Case

- Identifying highest-paying departments
- Compensation benchmarking
- HR and payroll analytics
- Department performance reporting
