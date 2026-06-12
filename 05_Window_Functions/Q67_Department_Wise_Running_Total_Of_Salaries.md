# Q67 - Department Wise Running Total Of Salaries

## Problem

Calculate a running total of salaries within each department.

## SQL Query

```sql
SELECT emp_id,
       emp_name,
       dept_id,
       salary,
       SUM(salary) OVER
       (
           PARTITION BY dept_id
           ORDER BY emp_id
       ) AS department_running_total
FROM Employees;
```

## Explanation

PARTITION BY dept_id divides employees into separate departments.

SUM() OVER() calculates a running total within each department.

ORDER BY emp_id determines the sequence in which salaries are accumulated.

The running total restarts whenever a new department begins.

## Expected Output

| emp_id | emp_name | dept_id | salary | department_running_total |
|---------|----------|----------|---------|-------------------------|
| 1 | Rahul | 101 | 50000 | 50000 |
| 3 | Neha | 101 | 70000 | 120000 |
| 5 | Rohit | 101 | 80000 | 200000 |
| 10 | Ankit | 101 | 90000 | 290000 |

(Output may vary based on dataset)

## Concepts Used

- Window Function
- SUM()
- OVER()
- PARTITION BY
- ORDER BY
- Running Total

## Interview Tip

Without PARTITION BY:

```sql
SUM(salary) OVER (ORDER BY emp_id)
```

One running total for the entire company.

With PARTITION BY:

```sql
SUM(salary) OVER
(
    PARTITION BY dept_id
    ORDER BY emp_id
)
```

Separate running totals for each department.

## Real-World Use Case

- Department-wise expense tracking
- Sales analysis by region
- Budget monitoring
- Financial dashboards
