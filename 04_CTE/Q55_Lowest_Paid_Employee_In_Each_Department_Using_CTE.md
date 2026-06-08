# Q55 - Lowest Paid Employee In Each Department Using CTE

## Problem

Find the lowest-paid employee in each department using a Common Table Expression (CTE).

## SQL Query

```sql
WITH DepartmentMinSalary AS
(
    SELECT dept_id,
           MIN(salary) AS min_salary
    FROM Employees
    GROUP BY dept_id
)

SELECT e.emp_id,
       e.emp_name,
       e.dept_id,
       e.salary
FROM Employees e
INNER JOIN DepartmentMinSalary d
ON e.dept_id = d.dept_id
AND e.salary = d.min_salary;
```

## Explanation

The CTE calculates the minimum salary for each department.

The Employees table is joined with the CTE using:

- dept_id
- salary = min_salary

This returns employees whose salary matches the lowest salary in their department.

If multiple employees have the same lowest salary in a department, all of them will be returned.

## Expected Output

| emp_id | emp_name | dept_id | salary |
|---------|----------|----------|---------|
| 6 | Simran | 102 | 45000 |
| 4 | Priya | 103 | 55000 |
| 14 | Riya | 104 | 47000 |
| 30 | Harsh | 105 | 54000 |
| ... | ... | ... | ... |

(Output may vary based on dataset)

## Concepts Used

- CTE (WITH Clause)
- MIN()
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
    SELECT MIN(salary)
    FROM Employees
    WHERE dept_id = e.dept_id
);
```

With CTE:

```sql
WITH DepartmentMinSalary AS
(
    SELECT dept_id,
           MIN(salary) AS min_salary
    FROM Employees
    GROUP BY dept_id
)

SELECT *
FROM Employees e
JOIN DepartmentMinSalary d
ON e.dept_id = d.dept_id
AND e.salary = d.min_salary;
```

The CTE version is easier to read and maintain, especially in large reporting queries.

## Real-World Use Case

- Identifying lowest-paid employees by department
- Salary benchmarking
- HR compensation analysis
