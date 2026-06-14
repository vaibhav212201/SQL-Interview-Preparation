# Q94 - Find Employees Working In The Department With The Highest Average Salary

## Problem

Find the department having the highest average salary and display all employees working in that department.

## SQL Query

```sql
WITH DepartmentAverageSalary AS
(
    SELECT dept_id,
           AVG(salary) AS average_salary
    FROM Employees
    GROUP BY dept_id
),

TopDepartment AS
(
    SELECT dept_id
    FROM DepartmentAverageSalary
    WHERE average_salary =
    (
        SELECT MAX(average_salary)
        FROM DepartmentAverageSalary
    )
)

SELECT e.emp_id,
       e.emp_name,
       e.dept_id,
       e.salary
FROM Employees e
INNER JOIN TopDepartment t
ON e.dept_id = t.dept_id;
```

## Explanation

The first CTE calculates the average salary of each department.

The second CTE identifies the department having the highest average salary.

The final query returns all employees belonging to that department.

If multiple departments share the same highest average salary, employees from all such departments will be returned.

## Expected Output

| emp_id | emp_name | dept_id | salary |
|---------|----------|----------|---------|
| 1 | Rahul | 101 | 50000 |
| 3 | Neha | 101 | 70000 |
| 5 | Rohit | 101 | 80000 |
| 10 | Ankit | 90000 |
| 23 | Abhishek | 95000 |
| 31 | Anjali | 88000 |
| 37 | Muskan | 82000 |
| 43 | Divya | 97000 |
| 49 | Ruchi | 92000 |

(Output may vary based on dataset)

## Concepts Used

- CTE
- Multiple CTEs
- AVG()
- MAX()
- GROUP BY
- INNER JOIN

## Interview Tip

This question combines two common interview patterns:

1. Find the department with the highest average salary.
2. Retrieve all employees belonging to that department.

Interviewers often use this question to test multi-step query building.

## Alternative Solution Using Window Functions

```sql
WITH DepartmentAverageSalary AS
(
    SELECT dept_id,
           AVG(salary) AS average_salary,
           DENSE_RANK() OVER
           (
               ORDER BY AVG(salary) DESC
           ) AS salary_rank
    FROM Employees
    GROUP BY dept_id
)

SELECT e.*
FROM Employees e
JOIN DepartmentAverageSalary d
ON e.dept_id = d.dept_id
WHERE d.salary_rank = 1;
```

## Real-World Use Case

- Department benchmarking
- Compensation analysis
- Workforce planning
- Executive reporting
