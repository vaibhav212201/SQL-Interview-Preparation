# Q84 - Find Employees Earning More Than Their Department Average Salary

## Problem

Find employees whose salary is greater than the average salary of their respective department.

## SQL Query

```sql
SELECT e.emp_id,
       e.emp_name,
       e.dept_id,
       e.salary
FROM Employees e
WHERE e.salary >
(
    SELECT AVG(salary)
    FROM Employees
    WHERE dept_id = e.dept_id
);
```

## Explanation

This is a Correlated Subquery.

For each employee, the subquery calculates the average salary of that employee's department.

The outer query compares the employee's salary with the department average.

Only employees earning more than their department average salary are returned.

## Expected Output

| emp_id | emp_name | dept_id | salary |
|---------|----------|----------|---------|
| 10 | Ankit | 101 | 90000 |
| 23 | Abhishek | 101 | 95000 |
| 43 | Divya | 101 | 97000 |
| 39 | Komal | 103 | 79000 |
| ... | ... | ... | ... |

(Output may vary based on dataset)

## Concepts Used

- Correlated Subquery
- AVG()
- WHERE Clause
- Aggregate Functions

## Interview Tip

This is one of the most frequently asked SQL interview questions.

A correlated subquery executes once for every row processed by the outer query.

Alternative Window Function Solution:

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

Interviewers often ask for both solutions.

## Real-World Use Case

- Identifying high performers
- Salary benchmarking
- Compensation analysis
- HR analytics
