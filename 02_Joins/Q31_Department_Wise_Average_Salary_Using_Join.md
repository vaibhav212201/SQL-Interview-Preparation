# Q31 - Find Average Salary Of Employees In Each Department

## Problem

Find the average salary of employees in each department along with the department name.

## SQL Query

```sql
SELECT d.department_name,
       AVG(e.salary) AS average_salary
FROM Employees e
INNER JOIN Departments d
ON e.dept_id = d.dept_id
GROUP BY d.department_name;
```

## Explanation

The Employees table is joined with the Departments table using dept_id.

AVG() calculates the average salary of employees in each department.

GROUP BY groups employees based on department name.

The query returns department names along with their average salaries.

## Expected Output

| department_name | average_salary |
|-----------------|---------------|
| IT | 81272.73 |
| HR | 53750.00 |
| Finance | 69500.00 |
| Sales | 62666.67 |
| Marketing | 60428.57 |
| Operations | 73428.57 |

(Output may vary based on dataset)

## Concepts Used

- INNER JOIN
- GROUP BY
- AVG()
- Aggregate Functions

## Interview Tip

This is one of the most common reporting queries.

A JOIN is used to fetch department names instead of displaying only department IDs.

## Real-World Use Case

- Payroll reporting
- HR analytics
- Department salary analysis
- Compensation benchmarking
