# Q81 - Find The Third Highest Salary

## Problem

Find the third highest salary from the Employees table.

## SQL Query

```sql
SELECT DISTINCT salary
FROM Employees
ORDER BY salary DESC
LIMIT 1 OFFSET 2;
```

## Explanation

The salaries are sorted in descending order.

OFFSET 2 skips the first two highest salaries.

LIMIT 1 returns the next salary, which is the third highest salary.

DISTINCT is used to avoid duplicate salary values.

## Expected Output

| salary |
|---------|
| 92000 |

(Output may vary based on dataset)

## Concepts Used

- DISTINCT
- ORDER BY
- LIMIT
- OFFSET

## Interview Tip

Nth Highest Salary Pattern:

```sql
SELECT DISTINCT salary
FROM Employees
ORDER BY salary DESC
LIMIT 1 OFFSET N-1;
```

Examples:

Second Highest Salary:

```sql
LIMIT 1 OFFSET 1;
```

Third Highest Salary:

```sql
LIMIT 1 OFFSET 2;
```

Fourth Highest Salary:

```sql
LIMIT 1 OFFSET 3;
```

## Alternative Solution Using DENSE_RANK()

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

SELECT salary
FROM SalaryRanking
WHERE salary_rank = 3;
```

## Real-World Use Case

- Compensation analysis
- Performance benchmarking
- Ranking reports
- HR analytics
