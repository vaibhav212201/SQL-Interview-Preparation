# Q93 - Find Employees And Departments Above Company Average Salary

## Problem

Find employees who:

1. Earn more than the overall company average salary.
2. Belong to departments whose average salary is also greater than the company average salary.

## SQL Query

```sql
WITH CompanyAverage AS
(
    SELECT AVG(salary) AS company_avg_salary
    FROM Employees
),

DepartmentAverage AS
(
    SELECT dept_id,
           AVG(salary) AS department_avg_salary
    FROM Employees
    GROUP BY dept_id
)

SELECT e.emp_id,
       e.emp_name,
       e.dept_id,
       e.salary
FROM Employees e
INNER JOIN DepartmentAverage d
ON e.dept_id = d.dept_id
CROSS JOIN CompanyAverage c
WHERE e.salary > c.company_avg_salary
AND d.department_avg_salary > c.company_avg_salary;
```

## Explanation

The first CTE calculates the company-wide average salary.

The second CTE calculates the average salary for each department.

The query returns employees who:

- Earn more than the company average salary.
- Work in departments whose average salary is also above the company average.

This combines employee-level and department-level analysis.

## Expected Output

| emp_id | emp_name | dept_id | salary |
|---------|----------|----------|---------|
| 10 | Ankit | 101 | 90000 |
| 23 | Abhishek | 101 | 95000 |
| 31 | Anjali | 101 | 88000 |
| 43 | Divya | 101 | 97000 |
| 49 | Ruchi | 101 | 92000 |
| 48 | Vivek | 106 | 81000 |

(Output may vary based on dataset)

## Concepts Used

- CTE
- Multiple CTEs
- AVG()
- GROUP BY
- INNER JOIN
- CROSS JOIN
- Aggregate Comparison

## Interview Tip

This is a layered filtering question:

Step 1:

```sql
Employee Salary > Company Average
```

Step 2:

```sql
Department Average > Company Average
```

Step 3:

```sql
Return employees satisfying both conditions
```

Interviewers ask such questions to test understanding of aggregates at multiple levels.

## Alternative Solution Using Window Functions

```sql
WITH SalaryAnalysis AS
(
    SELECT emp_id,
           emp_name,
           dept_id,
           salary,
           AVG(salary) OVER() AS company_avg_salary,
           AVG(salary) OVER
           (
               PARTITION BY dept_id
           ) AS department_avg_salary
    FROM Employees
)

SELECT *
FROM SalaryAnalysis
WHERE salary > company_avg_salary
AND department_avg_salary > company_avg_salary;
```

## Real-World Use Case

- High performer identification
- Compensation analysis
- Department benchmarking
- Executive HR reporting
