# Q95 - Find Employees In The Top 10% Salary Bracket

## Problem

Find employees whose salaries fall within the top 10% of all salaries.

## SQL Query

```sql
WITH SalaryBuckets AS
(
    SELECT emp_id,
           emp_name,
           salary,
           NTILE(10) OVER
           (
               ORDER BY salary DESC
           ) AS salary_decile
    FROM Employees
)

SELECT *
FROM SalaryBuckets
WHERE salary_decile = 1;
```

## Explanation

NTILE(10) divides employees into 10 approximately equal groups (deciles).

Employees are sorted by salary in descending order.

Decile 1 contains the highest-paid employees.

The final query returns employees belonging to the top 10% salary bracket.

## Expected Output

| emp_id | emp_name | salary | salary_decile |
|---------|----------|---------|--------------|
| 43 | Divya | 97000 | 1 |
| 23 | Abhishek | 95000 | 1 |
| 49 | Ruchi | 92000 | 1 |
| 10 | Ankit | 90000 | 1 |
| 31 | Anjali | 88000 | 1 |

(Output may vary based on dataset)

## Concepts Used

- Window Function
- NTILE()
- OVER()
- ORDER BY
- CTE

## Interview Tip

Top 20% Employees:

```sql
NTILE(5) OVER (ORDER BY salary DESC)
```

Top 10% Employees:

```sql
NTILE(10) OVER (ORDER BY salary DESC)
```

Top 25% Employees:

```sql
NTILE(4) OVER (ORDER BY salary DESC)
```

NTILE() is commonly used for segmentation and percentile-style analysis.

## Alternative Solution Using PERCENT_RANK()

```sql
WITH SalaryRanking AS
(
    SELECT emp_id,
           emp_name,
           salary,
           PERCENT_RANK() OVER
           (
               ORDER BY salary
           ) AS salary_percentile
    FROM Employees
)

SELECT *
FROM SalaryRanking
WHERE salary_percentile >= 0.90;
```

## Real-World Use Case

- Employee Compensation Analysis
- Customer Segmentation
- Revenue Classification
- Performance Benchmarking
- Business Intelligence Reporting
