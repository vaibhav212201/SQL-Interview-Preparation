# Q64 - Find Top 3 Highest Paid Employees Using ROW_NUMBER()

## Problem

Find the top 3 highest-paid employees using the ROW_NUMBER() window function.

## SQL Query

```sql
WITH EmployeeRanking AS
(
    SELECT emp_id,
           emp_name,
           salary,
           ROW_NUMBER() OVER (ORDER BY salary DESC) AS row_num
    FROM Employees
)

SELECT *
FROM EmployeeRanking
WHERE row_num <= 3;
```

## Explanation

ROW_NUMBER() assigns a unique rank to each employee based on salary in descending order.

The employee with the highest salary receives Row Number 1.

The CTE stores the ranking result.

The final query returns only the top 3 employees.

## Expected Output

| emp_id | emp_name | salary | row_num |
|---------|----------|---------|---------|
| 43 | Divya | 97000 | 1 |
| 23 | Abhishek | 95000 | 2 |
| 49 | Ruchi | 92000 | 3 |

(Output may vary based on dataset)

## Concepts Used

- CTE
- ROW_NUMBER()
- OVER()
- ORDER BY
- Window Functions

## Interview Tip

Top 5 Employees:

```sql
WHERE row_num <= 5;
```

Top 10 Employees:

```sql
WHERE row_num <= 10;
```

This Top-N pattern is one of the most frequently asked Window Function interview questions.

## Real-World Use Case

- Top performers
- Highest revenue customers
- Best-selling products
- Leaderboards
