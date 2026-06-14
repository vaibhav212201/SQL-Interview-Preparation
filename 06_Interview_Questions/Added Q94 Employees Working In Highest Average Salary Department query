# Q96 - Find Employees Whose Salary Is Above Their Department Average

## Problem

Find employees whose salary is higher than the average salary of their department using a Window Function.

## SQL Query

```sql
WITH SalaryAnalysis AS
(
    SELECT emp_id,
           emp_name,
           dept_id,
           salary,
           AVG(salary) OVER
           (
               PARTITION BY dept_id
           ) AS department_avg_salary
    FROM Employees
)

SELECT *
FROM SalaryAnalysis
WHERE salary > department_avg_salary;
```

## Explanation

The Window Function calculates the average salary for each department.

PARTITION BY dept_id creates separate groups for every department.

Each employee row keeps its original data while also showing the department average salary.

The final query returns employees whose salary exceeds their department average.

## Expected Output

| emp_id | emp_name | dept_id | salary | department_avg_salary |
|---------|----------|----------|---------|----------------------|
| 10 | Ankit | 101 | 90000 | 81272.73 |
| 23 | Abhishek | 101 | 95000 | 81272.73 |
| 43 | Divya | 101 | 97000 | 81272.73 |
| 39 | Komal | 103 | 79000 | 69500.00 |
| ... | ... | ... | ... | ... |

(Output may vary based on dataset)

## Concepts Used

- Window Function
- AVG()
- OVER()
- PARTITION BY
- CTE

## Interview Tip

Subquery Solution:

```sql
SELECT *
FROM Employees e
WHERE salary >
(
    SELECT AVG(salary)
    FROM Employees
    WHERE dept_id = e.dept_id
);
```

Window Function Solution:

```sql
AVG(salary) OVER
(
    PARTITION BY dept_id
)
```

The Window Function version is usually preferred for analytics because it avoids repeatedly executing a correlated subquery.

## Real-World Use Case

- High performer identification
- Compensation benchmarking
- Payroll analysis
- HR dashboards
