# Q97 - Find Employee(s) With The Longest Tenure In The Company

## Problem

Find the employee(s) who have been working in the company for the longest time.

## SQL Query

```sql
SELECT emp_id,
       emp_name,
       joining_date
FROM Employees
WHERE joining_date =
(
    SELECT MIN(joining_date)
    FROM Employees
);
```

## Explanation

MIN(joining_date) finds the earliest joining date in the company.

The outer query retrieves all employees who joined on that earliest date.

If multiple employees joined on the same earliest date, all of them will be returned.

These employees have the longest tenure in the company.

## Expected Output

| emp_id | emp_name | joining_date |
|---------|----------|-------------|
| 43 | Divya | 2018-04-04 |

(Output may vary based on dataset)

## Concepts Used

- MIN()
- Subquery
- Date Analysis
- Filtering

## Interview Tip

Longest Tenure Employee:

```sql
SELECT *
FROM Employees
WHERE joining_date =
(
    SELECT MIN(joining_date)
    FROM Employees
);
```

Most Recent Employee:

```sql
SELECT *
FROM Employees
WHERE joining_date =
(
    SELECT MAX(joining_date)
    FROM Employees
);
```

Interviewers often ask both variations.

## Alternative Solution Using DENSE_RANK()

```sql
WITH EmployeeRanking AS
(
    SELECT emp_id,
           emp_name,
           joining_date,
           DENSE_RANK() OVER
           (
               ORDER BY joining_date ASC
           ) AS joining_rank
    FROM Employees
)

SELECT *
FROM EmployeeRanking
WHERE joining_rank = 1;
```

## Real-World Use Case

- Employee tenure analysis
- Workforce planning
- HR reporting
- Organizational history tracking
