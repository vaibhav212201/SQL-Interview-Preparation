# Q98 - Find Employees Hired In The Same Year As The Company's Earliest Employee

## Problem

Find all employees who joined in the same year as the company's earliest employee.

## SQL Query

```sql
SELECT emp_id,
       emp_name,
       joining_date
FROM Employees
WHERE YEAR(joining_date) =
(
    SELECT YEAR(MIN(joining_date))
    FROM Employees
);
```

## Explanation

The subquery finds the earliest joining date in the company.

YEAR() extracts the year from that date.

The outer query returns all employees whose joining year matches the earliest employee's joining year.

In the current dataset, the earliest joining date is:

```text
2018-04-04
```

Therefore, all employees who joined in 2018 will be returned.

## Expected Output

| emp_id | emp_name | joining_date |
|---------|----------|-------------|
| 10 | Ankit | 2018-12-15 |
| 23 | Abhishek | 2018-05-21 |
| 31 | Anjali | 2018-08-18 |
| 39 | Komal | 2018-11-21 |
| 43 | Divya | 2018-04-04 |
| 49 | Ruchi | 2018-07-17 |

(Output may vary based on dataset)

## Concepts Used

- YEAR()
- MIN()
- Subquery
- Date Functions
- Filtering

## Interview Tip

Earliest Joining Date:

```sql
SELECT MIN(joining_date)
FROM Employees;
```

Employees Joined In Same Year:

```sql
SELECT *
FROM Employees
WHERE YEAR(joining_date) =
(
    SELECT YEAR(MIN(joining_date))
    FROM Employees
);
```

Interviewers often test whether you can combine aggregate functions with date functions.

## Alternative Solution Using CTE

```sql
WITH EarliestYear AS
(
    SELECT YEAR(MIN(joining_date)) AS joining_year
    FROM Employees
)

SELECT *
FROM Employees
WHERE YEAR(joining_date) =
(
    SELECT joining_year
    FROM EarliestYear
);
```

## Real-World Use Case

- Cohort Analysis
- Employee Batch Analysis
- Workforce History Reporting
- HR Analytics
