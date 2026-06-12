# Q80 - Find The Last Employee Joined In Each Department Using ROW_NUMBER()

## Problem

Find the most recently joined employee in each department.

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
               ORDER BY joining_date DESC
           ) AS joining_rank
    FROM Employees
)

SELECT *
FROM EmployeeJoiningRank
WHERE joining_rank = 1;
```

## Explanation

PARTITION BY dept_id creates separate groups for each department.

ORDER BY joining_date DESC sorts employees from the most recent joining date to the oldest joining date.

ROW_NUMBER() assigns ranks starting from 1.

The employee with rank 1 is the latest employee who joined that department.

## Expected Output

| emp_id | emp_name | dept_id | joining_date | joining_rank |
|---------|----------|----------|-------------|-------------|
| 44 | Akash | 102 | 2022-08-08 | 1 |
| 14 | Riya | 104 | 2023-04-14 | 1 |
| 35 | Isha | 105 | 2022-07-07 | 1 |
| ... | ... | ... | ... | ... |

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

ASC → Earliest Date

DESC → Latest Date

## Real-World Use Case

- New hire analysis
- Workforce tracking
- Recruitment reporting
- HR dashboards
