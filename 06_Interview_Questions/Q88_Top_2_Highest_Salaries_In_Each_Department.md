# Q88 - Find Top 2 Highest Salaries In Each Department

## Problem

Find employees having the top 2 highest salaries in each department.

## SQL Query

```sql
WITH SalaryRanking AS
(
    SELECT emp_id,
           emp_name,
           dept_id,
           salary,
           DENSE_RANK() OVER
           (
               PARTITION BY dept_id
               ORDER BY salary DESC
           ) AS salary_rank
    FROM Employees
)

SELECT *
FROM SalaryRanking
WHERE salary_rank <= 2;
```

## Explanation

DENSE_RANK() assigns salary ranks separately within each department.

PARTITION BY dept_id creates independent rankings for every department.

ORDER BY salary DESC ranks employees from highest salary to lowest salary.

The final query returns employees whose rank is 1 or 2.

## Expected Output

| emp_id | emp_name | dept_id | salary | salary_rank |
|---------|----------|----------|---------|------------|
| 43 | Divya | 101 | 97000 | 1 |
| 23 | Abhishek | 101 | 95000 | 2 |
| 2 | Aman | 102 | 60000 | 1 |
| 44 | Akash | 102 | 59000 | 2 |
| ... | ... | ... | ... | ... |

(Output may vary based on dataset)

## Concepts Used

- Window Function
- DENSE_RANK()
- PARTITION BY
- ORDER BY
- CTE

## Interview Tip

Top 1 Salary Per Department:

```sql
WHERE salary_rank = 1;
```

Top 2 Salaries Per Department:

```sql
WHERE salary_rank <= 2;
```

Top 3 Salaries Per Department:

```sql
WHERE salary_rank <= 3;
```

This is one of the most common SQL interview questions.

## Alternative Solution

```sql
SELECT *
FROM
(
    SELECT emp_id,
           emp_name,
           dept_id,
           salary,
           DENSE_RANK() OVER
           (
               PARTITION BY dept_id
               ORDER BY salary DESC
           ) AS salary_rank
    FROM Employees
) t
WHERE salary_rank <= 2;
```

## Real-World Use Case

- Top performers by department
- Bonus allocation
- Salary benchmarking
- Department-wise ranking reports
