# Q91 - Find Employees Who Joined In The Earliest Year

## Problem

Find employees who joined in the earliest year present in the company data.

## SQL Query

```sql
SELECT *
FROM Employees
WHERE YEAR(joining_date) =
(
    SELECT MIN(YEAR(joining_date))
    FROM Employees
);
```

## Explanation

The subquery finds the earliest joining year in the Employees table.

The outer query retrieves all employees who joined during that year.

In the current dataset, the earliest joining year is expected to be 2018.

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

- Date Functions
- YEAR()
- Subquery
- MIN()
- Filtering

## Interview Tip

Earliest Joining Date:

```sql
SELECT *
FROM Employees
WHERE joining_date =
(
    SELECT MIN(joining_date)
    FROM Employees
);
```

Earliest Joining Year:

```sql
SELECT *
FROM Employees
WHERE YEAR(joining_date) =
(
    SELECT MIN(YEAR(joining_date))
    FROM Employees
);
```

These are different questions and interviewers often ask both.

## Alternative Solution

```sql
WITH EarliestYear AS
(
    SELECT MIN(YEAR(joining_date)) AS first_year
    FROM Employees
)

SELECT *
FROM Employees
WHERE YEAR(joining_date) =
(
    SELECT first_year
    FROM EarliestYear
);
```

## Real-World Use Case

- Employee tenure analysis
- Workforce history reporting
- HR analytics
- Organizational growth analysis
