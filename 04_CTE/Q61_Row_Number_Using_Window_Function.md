# Q61 - Assign Row Numbers To Employees Based On Salary

## Problem

Assign a unique row number to each employee based on salary in descending order.

## SQL Query

```sql
SELECT emp_id,
       emp_name,
       salary,
       ROW_NUMBER() OVER (ORDER BY salary DESC) AS row_num
FROM Employees;
```

## Explanation

ROW_NUMBER() assigns a unique sequential number to each row.

Employees are sorted by salary in descending order.

The highest-paid employee receives Row Number 1.

Even if two employees have the same salary, ROW_NUMBER() assigns different numbers.

## Expected Output

| emp_id | emp_name | salary | row_num |
|---------|----------|---------|---------|
| 43 | Divya | 97000 | 1 |
| 23 | Abhishek | 95000 | 2 |
| 49 | Ruchi | 92000 | 3 |
| 10 | Ankit | 90000 | 4 |

(Output may vary based on dataset)

## Concepts Used

- Window Function
- ROW_NUMBER()
- OVER()
- ORDER BY

## Interview Tip

ROW_NUMBER() always generates unique numbers.

Example:

| Salary |
|---------|
| 95000 |
| 95000 |
| 90000 |

Result:

```text
1
2
3
```

Even though two employees have the same salary, row numbers are different.

## Real-World Use Case

- Ranking employees
- Pagination
- Top N analysis
- Report generation
