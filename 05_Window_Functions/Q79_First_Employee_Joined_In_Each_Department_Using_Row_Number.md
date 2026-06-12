# Q79 - Find The First Employee Joined In Each Department Using ROW_NUMBER()

## Problem

Find the first employee who joined in each department.

## SQL Query

```sql
WITH EmployeeJoiningRank AS
(
    SELECT emp_id,
           emp_name,
           dept_id,
           joining_date,
           ROW_NUMBER() OVER
           (
               PARTITION BY dept_id
               ORDER BY joining_date ASC
           ) AS joining_rank
    FROM Employees
)

SELECT *
FROM EmployeeJoiningRank
WHERE joining_rank = 1;
```

## Explanation

PARTITION BY dept_id creates separate groups for each department.

ORDER BY joining_date ASC sorts employees from earliest joining date to latest joining date.

ROW_NUMBER() assigns ranks starting from 1.

The employee with rank 1 is the first employee who joined that department.

## Expected Output

| emp_id | emp_name | dept_id | joining_date | joining_rank |
|---------|----------|----------|-------------|-------------|
| 23 | Abhishek | 101 | 2018-05-21 | 1 |
| 2 | Aman | 102 | 2021-05-15 | 1 |
| 39 | Komal | 103 | 2018-11-21 | 1 |
| 8 | Karan | 104 | 2021-08-12 | 1 |
| 26 | Ayush | 105 | 2020-01-14 | 1 |
| 48 | Vivek | 106 | 2019-05-05 | 1 |

(Output may vary based on dataset)

## Concepts Used

- Window Function
- ROW_NUMBER()
- PARTITION BY
- ORDER BY
- CTE
- Date Analysis

## Interview Tip

First Employee In Department:

```sql
ROW_NUMBER() OVER
(
    PARTITION BY dept_id
    ORDER BY joining_date ASC
)
```

Last Employee In Department:

```sql
ROW_NUMBER() OVER
(
    PARTITION BY dept_id
    ORDER BY joining_date DESC
)
```

Only the sorting order changes.

## Real-World Use Case

- Employee tenure analysis
- Workforce planning
- Department history tracking
- HR analytics
