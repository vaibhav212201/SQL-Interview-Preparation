# Q62 - Rank Employees Based On Salary

## Problem

Assign ranks to employees based on salary in descending order using the RANK() window function.

## SQL Query

```sql
SELECT emp_id,
       emp_name,
       salary,
       RANK() OVER (ORDER BY salary DESC) AS employee_rank
FROM Employees;
```

## Explanation

RANK() assigns ranks based on the ORDER BY clause.

Employees having the same salary receive the same rank.

When multiple employees share the same rank, the next rank number is skipped.

## Expected Output

Example:

| emp_name | salary | employee_rank |
|-----------|---------|--------------|
| Divya | 97000 | 1 |
| Abhishek | 95000 | 2 |
| Ruchi | 95000 | 2 |
| Ankit | 90000 | 4 |

Notice that Rank 3 is skipped.

(Output may vary based on dataset)

## Concepts Used

- Window Function
- RANK()
- OVER()
- ORDER BY

## Interview Tip

Example Data:

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

Ranks are repeated for ties and gaps appear in ranking.

## Difference Between ROW_NUMBER() and RANK()

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

ROW_NUMBER() gives unique numbers.

RANK() allows ties and skips ranks.

## Real-World Use Case

- Employee rankings
- Sales leaderboards
- Competition rankings
- Performance analysis
