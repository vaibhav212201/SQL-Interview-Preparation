# Q63 - Assign Dense Ranks To Employees Based On Salary

## Problem

Assign dense ranks to employees based on salary in descending order.

## SQL Query

```sql
SELECT emp_id,
       emp_name,
       salary,
       DENSE_RANK() OVER (ORDER BY salary DESC) AS employee_rank
FROM Employees;
```

## Explanation

DENSE_RANK() assigns ranks based on the ORDER BY clause.

Employees with the same salary receive the same rank.

Unlike RANK(), DENSE_RANK() does not skip rank numbers when ties occur.

## Expected Output

Example:

| emp_name | salary | employee_rank |
|-----------|---------|--------------|
| Divya | 97000 | 1 |
| Abhishek | 95000 | 2 |
| Ruchi | 95000 | 2 |
| Ankit | 90000 | 3 |

Notice that Rank 3 is not skipped.

(Output may vary based on dataset)

## Concepts Used

- Window Function
- DENSE_RANK()
- OVER()
- ORDER BY

## Interview Tip

Difference Between ROW_NUMBER(), RANK() and DENSE_RANK():

Example Data:

| Salary |
|---------|
| 95000 |
| 95000 |
| 90000 |

ROW_NUMBER():

```text
1
2
3
```

RANK():

```text
1
1
3
```

DENSE_RANK():

```text
1
1
2
```

Use:

- ROW_NUMBER() → Unique numbering
- RANK() → Ranking with gaps
- DENSE_RANK() → Ranking without gaps

## Real-World Use Case

- Employee Ranking
- Sales Leaderboards
- Competition Rankings
- Top N Analysis
