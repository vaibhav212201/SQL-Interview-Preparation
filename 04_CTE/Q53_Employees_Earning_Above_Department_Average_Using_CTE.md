# Q53 - Employees Earning Above Department Average Salary Using CTE

## Problem

Find employees whose salary is greater than the average salary of their respective department using a Common Table Expression (CTE).

## SQL Query

```sql
WITH DepartmentAverageSalary AS
(
    SELECT dept_id,
           AVG(salary) AS average_salary
    FROM Employees
    GROUP BY dept_id
)

SELECT e.emp_id,
       e.emp_name,
       e.dept_id,
       e.salary
FROM Employees e
INNER JOIN DepartmentAverageSalary d
ON e.dept_id = d.dept_id
WHERE e.salary > d.average_salary;
```

## Explanation

The CTE calculates the average salary for each department.

The Employees table is joined with the CTE using dept_id.

The WHERE clause filters employees whose salary is greater than their department's average salary.

This approach is cleaner and more readable than a correlated subquery.

## Expected Output

| emp_id | emp_name | dept_id | salary |
|---------|----------|----------|---------|
| 3 | Neha | 101 | 70000 |
| 10 | Ankit | 101 | 90000 |
| 23 | Abhishek | 101 | 95000 |
| 39 | Komal | 103 | 79000 |
| ... | ... | ... | ... |

(Output may vary based on dataset)

## Concepts Used

- CTE (WITH Clause)
- INNER JOIN
- AVG()
- GROUP BY
- Filtering Data

## Interview Tip

Correlated Subquery Solution:

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

CTE Solution:

```sql
WITH DepartmentAverageSalary AS
(
    SELECT dept_id,
           AVG(salary) AS average_salary
    FROM Employees
    GROUP BY dept_id
)

SELECT *
FROM Employees e
JOIN DepartmentAverageSalary d
ON e.dept_id = d.dept_id
WHERE e.salary > d.average_salary;
```

The CTE version is generally easier to understand and maintain.

## Real-World Use Case

- Identifying high performers within departments
- Compensation analysis
- Employee appraisal reporting
