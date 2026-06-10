# Q62 - Rank Employees Based On Salary

## Problem

Assign ranks to employees based on salary in descending order.

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

Employees with the same salary receive the same rank.

When there is a tie, the next rank is skipped.

## Expected Output

Example:

| emp_name | salary | employee_rank |
|-----------|---------|--------------|
| Divya | 97000 | 1 |
| Abhishek | 95000 | 2 |
| Ruchi | 95000 | 2 |
| Ankit | 90000 | 4 |

Notice that Rank 3 is skipped because two employees share Rank 2.

(Output may vary based on dataset)

## Concepts Used

- Window Function
- RANK()
- OVER()
- ORDER BY

## Interview Tip

Difference Between ROW_NUMBER() and RANK():

ROW_NUMBER():

```sql
SELECT emp_name,
       salary,
       ROW_NUMBER() OVER (ORDER BY salary DESC)
FROM Employees;
```

Result:

| Salary |
|---------|
| 95000 | → 1 |
| 95000 | → 2 |
| 90000 | → 3 |

RANK():

```sql
SELECT emp_name,
       salary,
       RANK() OVER (ORDER BY salary DESC)
FROM Employees;
```

Result:

| Salary |
|---------|
| 95000 | → 1 |
| 95000 | → 1 |
| 90000 | → 3 |

Rank 2 is skipped.

## Real-World Use Case

- Employee Ranking
- Leaderboards
- Sales Performance Ranking
- Top Performer Reports
