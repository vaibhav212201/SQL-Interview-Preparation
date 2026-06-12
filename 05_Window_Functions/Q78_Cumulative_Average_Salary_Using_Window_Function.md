# Q78 - Calculate Cumulative Average Salary Using AVG() OVER()

## Problem

Calculate the cumulative average salary of employees ordered by employee ID.

## SQL Query

```sql
SELECT emp_id,
       emp_name,
       salary,
       AVG(salary) OVER
       (
           ORDER BY emp_id
       ) AS cumulative_average_salary
FROM Employees;
```

## Explanation

AVG() OVER() calculates a running average.

The average is calculated from the first employee up to the current employee based on emp_id.

As more rows are processed, the average is continuously updated.

## Expected Output

| emp_id | emp_name | salary | cumulative_average_salary |
|---------|----------|---------|--------------------------|
| 1 | Rahul | 50000 | 50000.00 |
| 2 | Aman | 60000 | 55000.00 |
| 3 | Neha | 70000 | 60000.00 |
| 4 | Priya | 55000 | 58750.00 |

(Output may vary based on dataset)

## Concepts Used

- Window Function
- AVG()
- OVER()
- ORDER BY
- Running Average

## Interview Tip

Running Total:

```sql
SUM(salary) OVER
(
    ORDER BY emp_id
)
```

Running Average:

```sql
AVG(salary) OVER
(
    ORDER BY emp_id
)
```

Both are common analytical calculations.

## Difference Between Q66 and Q78

Q66:

```sql
SUM(salary) OVER
(
    ORDER BY emp_id
)
```

Returns:

```text
Running Total
```

Q78:

```sql
AVG(salary) OVER
(
    ORDER BY emp_id
)
```

Returns:

```text
Running Average
```

## Real-World Use Case

- KPI Dashboards
- Revenue Trend Analysis
- Financial Reporting
- Business Performance Monitoring
