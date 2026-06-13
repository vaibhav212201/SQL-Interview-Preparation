# Q85 - Find The Department With The Highest Total Salary Expense

## Problem

Find the department that spends the most on employee salaries.

## SQL Query

```sql
SELECT d.department_name,
       SUM(e.salary) AS total_salary_expense
FROM Employees e
INNER JOIN Departments d
ON e.dept_id = d.dept_id
GROUP BY d.department_name
ORDER BY total_salary_expense DESC
LIMIT 1;
```

## Explanation

The Employees and Departments tables are joined using dept_id.

SUM() calculates the total salary expense for each department.

GROUP BY creates department-wise salary totals.

ORDER BY sorts departments from highest expense to lowest expense.

LIMIT 1 returns the department with the highest salary expense.

## Expected Output

| department_name | total_salary_expense |
|-----------------|---------------------|
| IT | 894000 |

(Output may vary based on dataset)

## Concepts Used

- INNER JOIN
- SUM()
- GROUP BY
- ORDER BY
- LIMIT

## Interview Tip

Top 3 Departments By Salary Expense:

```sql
SELECT d.department_name,
       SUM(e.salary) AS total_salary_expense
FROM Employees e
JOIN Departments d
ON e.dept_id = d.dept_id
GROUP BY d.department_name
ORDER BY total_salary_expense DESC
LIMIT 3;
```

This is a common business reporting question.

## Alternative Solution Using CTE

```sql
WITH DepartmentExpense AS
(
    SELECT dept_id,
           SUM(salary) AS total_salary_expense
    FROM Employees
    GROUP BY dept_id
)

SELECT *
FROM DepartmentExpense
WHERE total_salary_expense =
(
    SELECT MAX(total_salary_expense)
    FROM DepartmentExpense
);
```

## Real-World Use Case

- Payroll analysis
- Budget planning
- Department cost analysis
- HR and Finance reporting
