# Q87 - Find Nth Highest Salary Using DENSE_RANK()

## Problem

Find the Nth highest salary from the Employees table.

Assume N = 4.

## SQL Query

```sql
WITH SalaryRanking AS
(
    SELECT salary,
           DENSE_RANK() OVER
           (
               ORDER BY salary DESC
           ) AS salary_rank
    FROM Employees
)

SELECT DISTINCT salary
FROM SalaryRanking
WHERE salary_rank = 4;
```

## Explanation

DENSE_RANK() assigns ranks to salaries in descending order.

The highest salary gets Rank 1.

The query returns the salary having Rank 4.

This approach can easily be modified for any Nth highest salary.

## Expected Output

| salary |
|---------|
| 90000 |

(Output may vary based on dataset)

## Concepts Used

- Window Function
- DENSE_RANK()
- CTE
- Ranking

## Interview Tip

Second Highest Salary:

```sql
WHERE salary_rank = 2;
```

Third Highest Salary:

```sql
WHERE salary_rank = 3;
```

Fourth Highest Salary:

```sql
WHERE salary_rank = 4;
```

Nth Highest Salary:

```sql
WHERE salary_rank = N;
```

This is one of the most frequently asked SQL interview questions.

## Real-World Use Case

- Compensation analysis
- Ranking reports
- Top performer identification
- HR analytics
