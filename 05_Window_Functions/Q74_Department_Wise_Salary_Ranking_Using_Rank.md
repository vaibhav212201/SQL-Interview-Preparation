# Q74 - Department Wise Salary Ranking Using RANK()

## Problem

Rank employees within each department based on salary in descending order.

## SQL Query

```sql
SELECT emp_id,
       emp_name,
       dept_id,
       salary,
       RANK() OVER
       (
           PARTITION BY dept_id
           ORDER BY salary DESC
       ) AS department_rank
FROM Employees;
```

## Explanation

PARTITION BY dept_id creates separate groups for each department.

ORDER BY salary DESC sorts employees from highest salary to lowest salary within each department.

RANK() assigns ranks based on salary.

Employees with the same salary receive the same rank.

If there is a tie, the next rank is skipped.

## Expected Output

| emp_id | emp_name | dept_id | salary | department_rank |
|---------|----------|----------|---------|----------------|
| 43 | Divya | 101 | 97000 | 1 |
| 23 | Abhishek | 101 | 95000 | 2 |
| 49 | Ruchi | 101 | 92000 | 3 |
| 10 | Ankit | 101 | 90000 | 4 |
| ... | ... | ... | ... | ... |

(Output may vary based on dataset)

## Concepts Used

- Window Function
- RANK()
- PARTITION BY
- ORDER BY

## Interview Tip

Department-wise Ranking:

```sql
RANK() OVER
(
    PARTITION BY dept_id
    ORDER BY salary DESC
)
```

Company-wide Ranking:

```sql
RANK() OVER
(
    ORDER BY salary DESC
)
```

PARTITION BY restarts ranking for every department.

## Example

Salary Data:

```text
95000
95000
90000
85000
```

Ranks:

```text
1
1
3
4
```

Rank 2 is skipped because two employees share Rank 1.

## Real-World Use Case

- Employee performance ranking
- Sales leaderboard by region
- Product ranking by category
- Department-wise analytics reports
