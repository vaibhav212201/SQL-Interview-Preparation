# Q71 - Find The Second Highest Salary In Each Department Using DENSE_RANK()

## Problem

Find employees who earn the second highest salary in their respective departments.

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
WHERE salary_rank = 2;
```

## Explanation

DENSE_RANK() assigns rankings within each department.

PARTITION BY dept_id creates separate rankings for each department.

ORDER BY salary DESC ranks salaries from highest to lowest.

Employees with rank 2 have the second highest salary in their department.

## Expected Output

| emp_id | emp_name | dept_id | salary | salary_rank |
|---------|----------|----------|---------|------------|
| 49 | Ruchi | 101 | 92000 | 2 |
| 44 | Akash | 102 | 59000 | 2 |
| 33 | Payal | 103 | 77000 | 2 |
| 46 | Lokesh | 104 | 68000 | 2 |
| ... | ... | ... | ... | ... |

(Output may vary based on dataset)

## Concepts Used

- Window Function
- DENSE_RANK()
- PARTITION BY
- ORDER BY
- CTE

## Interview Tip

Highest Salary In Each Department:

```sql
WHERE salary_rank = 1
```

Second Highest Salary In Each Department:

```sql
WHERE salary_rank = 2
```

Third Highest Salary In Each Department:

```sql
WHERE salary_rank = 3
```

This pattern is one of the most frequently asked SQL interview questions.

## Why DENSE_RANK()?

Example:

| Salary |
|---------|
| 95000 |
| 95000 |
| 90000 |

Using RANK():

```text
1
1
3
```

Using DENSE_RANK():

```text
1
1
2
```

DENSE_RANK() is generally preferred when finding nth highest values.

## Real-World Use Case

- Department-wise salary analysis
- Performance rankings
- Compensation benchmarking
- HR reporting
