# Q54 - Highest Paid Employee In Each Department Using CTE

## Problem

Find the highest-paid employee in each department using a Common Table Expression (CTE).

## SQL Query

```sql
WITH DepartmentMaxSalary AS
(
    SELECT dept_id,
           MAX(salary) AS max_salary
    FROM Employees
    GROUP BY dept_id
)

SELECT e.emp_id,
       e.emp_name,
       e.dept_id,
       e.salary
FROM Employees e
INNER JOIN DepartmentMaxSalary d
ON e.dept_id = d.dept_id
AND e.salary = d.max_salary;
```

## Explanation

The CTE calculates the maximum salary for each department.

The Employees table is joined with the CTE using:

- dept_id
- salary = max_salary

This returns employees whose salary matches the highest salary in their department.

If multiple employees have the same highest salary in a department, all of them will be returned.

## Expected Output

| emp_id | emp_name | dept_id | salary |
|---------|----------|----------|---------|
| 43 | Divya | 101 | 97000 |
| 11 | Pooja | 102 | 58000 |
| 39 | Komal | 103 | 79000 |
| 34 | Saurabh | 104 | 69000 |
| 41 | Nandini | 105 | 66000 |
| 48 | Vivek | 106 | 81000 |

(Output may vary based on dataset)

## Concepts Used

- CTE (WITH Clause)
- MAX()
- GROUP BY
- INNER JOIN
- Aggregate Functions

## Interview Tip

Without CTE:

```sql
SELECT *
FROM Employees e
WHERE salary =
(
    SELECT MAX(salary)
    FROM Employees
    WHERE dept_id = e.dept_id
);
```

With CTE:

```sql
WITH DepartmentMaxSalary AS
(
    SELECT dept_id,
           MAX(salary) AS max_salary
    FROM Employees
    GROUP BY dept_id
)

SELECT *
FROM Employees e
JOIN DepartmentMaxSalary d
ON e.dept_id = d.dept_id
AND e.salary = d.max_salary;
```

The CTE version is usually preferred when building reports because the logic is separated and easier to read.

## Real-World Use Case

- Identifying top performers by department
- Promotion candidate analysis
- Compensation and payroll reporting
