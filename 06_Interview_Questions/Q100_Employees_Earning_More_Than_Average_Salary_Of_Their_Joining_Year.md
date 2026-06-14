# Q100 - Find Employees Earning More Than The Average Salary Of Employees Hired In The Same Year

## Problem

Find employees whose salary is greater than the average salary of employees who joined in the same year.

## SQL Query

```sql
WITH EmployeeSalaryAnalysis AS
(
    SELECT emp_id,
           emp_name,
           salary,
           joining_date,
           YEAR(joining_date) AS joining_year,
           AVG(salary) OVER
           (
               PARTITION BY YEAR(joining_date)
           ) AS yearly_average_salary
    FROM Employees
)

SELECT *
FROM EmployeeSalaryAnalysis
WHERE salary > yearly_average_salary;
```

## Explanation

YEAR(joining_date) extracts the joining year of each employee.

PARTITION BY YEAR(joining_date) creates separate groups for each joining year.

AVG() OVER() calculates the average salary for employees who joined in the same year.

The final query returns employees whose salary is higher than their joining year's average salary.

## Expected Output

| emp_id | emp_name | joining_year | salary | yearly_average_salary |
|---------|----------|-------------|---------|----------------------|
| 23 | Abhishek | 2018 | 95000 | 91000 |
| 43 | Divya | 2018 | 97000 | 91000 |
| 33 | Payal | 2020 | 77000 | 70000 |
| ... | ... | ... | ... | ... |

(Output may vary based on dataset)

## Concepts Used

- Window Function
- AVG()
- OVER()
- PARTITION BY
- YEAR()
- Date Functions
- CTE

## Interview Tip

Average Salary By Department:

```sql
AVG(salary) OVER
(
    PARTITION BY dept_id
)
```

Average Salary By Joining Year:

```sql
AVG(salary) OVER
(
    PARTITION BY YEAR(joining_date)
)
```

Window Functions allow comparisons within a specific group while preserving all rows.

## Alternative Solution Using Subquery

```sql
SELECT e.*
FROM Employees e
WHERE salary >
(
    SELECT AVG(salary)
    FROM Employees
    WHERE YEAR(joining_date) =
          YEAR(e.joining_date)
);
```

## Real-World Use Case

- Cohort Analysis
- Employee Compensation Benchmarking
- HR Analytics
- Workforce Trend Analysis
- Salary Growth Reporting
