# Q64 - Find Top 3 Highest Paid Employees Using ROW_NUMBER()

## Problem

Find the top 3 highest-paid employees using the ROW_NUMBER() window function.

## SQL Query

```sql
WITH EmployeeRank AS
(
    SELECT emp_id,
           emp_name,
           salary,
           ROW_NUMBER() OVER (ORDER BY salary DESC) AS row_num
    FROM Employees
)

SELECT *
FROM EmployeeRank
WHERE row_num <= 3;
```

## Explanation

ROW_NUMBER() assigns a unique rank to each employee based on salary in descending order.

The employee with the highest salary receives Row Number 1.

The CTE stores the ranking result.

The final query retrieves only the top 3 employees.

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

ROW_NUMBER() is commonly used for Top-N queries in interviews.

## Alternative Solution

```sql
SELECT *
FROM Employees
ORDER BY salary DESC
LIMIT 3;
```

However, interviewers often prefer the ROW_NUMBER() solution because it demonstrates knowledge of Window Functions.

## Real-World Use Case

- Top performers in a company
- Highest revenue customers
- Best-selling products
- Leaderboards and rankings
