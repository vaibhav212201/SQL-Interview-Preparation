# Q57 - Employees Earning More Than Company Average Salary With Department Names Using CTE

## Problem

Find employees whose salary is greater than the company average salary and display their department names.

## SQL Query

```sql
WITH CompanyAverageSalary AS
(
    SELECT AVG(salary) AS avg_salary
    FROM Employees
)

SELECT e.emp_id,
       e.emp_name,
       e.salary,
       d.department_name
FROM Employees e
INNER JOIN Departments d
ON e.dept_id = d.dept_id
CROSS JOIN CompanyAverageSalary c
WHERE e.salary > c.avg_salary;
```

## Explanation

The CTE calculates the average salary of all employees.

The Employees table is joined with the Departments table to retrieve department names.

The CROSS JOIN makes the company average salary available to every row.

The WHERE clause filters employees whose salary is greater than the company average salary.

## Expected Output

| emp_id | emp_name | salary | department_name |
|---------|----------|---------|----------------|
| 10 | Ankit | 90000 | IT |
| 23 | Abhishek | 95000 | IT |
| 43 | Divya | 97000 | IT |
| 49 | Ruchi | 92000 | IT |
| ... | ... | ... | ... |

(Output may vary based on dataset)

## Concepts Used

- CTE (WITH Clause)
- INNER JOIN
- CROSS JOIN
- AVG()
- Filtering Data
- Aggregate Functions

## Interview Tip

Without CTE:

```sql
SELECT e.emp_id,
       e.emp_name,
       e.salary,
       d.department_name
FROM Employees e
JOIN Departments d
ON e.dept_id = d.dept_id
WHERE e.salary >
(
    SELECT AVG(salary)
    FROM Employees
);
```

With CTE:

```sql
WITH CompanyAverageSalary AS
(
    SELECT AVG(salary) AS avg_salary
    FROM Employees
)

SELECT e.emp_id,
       e.emp_name,
       e.salary,
       d.department_name
FROM Employees e
JOIN Departments d
ON e.dept_id = d.dept_id
CROSS JOIN CompanyAverageSalary c
WHERE e.salary > c.avg_salary;
```

The CTE version is easier to extend when additional calculations are needed.

## Real-World Use Case

- Employee performance reporting
- Compensation analysis
- HR dashboards
- Salary benchmarking
