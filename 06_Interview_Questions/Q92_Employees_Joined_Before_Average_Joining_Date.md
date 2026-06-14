# Q92 - Find Employees Who Joined Before The Average Joining Date

## Problem

Find employees who joined before the average joining date of all employees.

## SQL Query

```sql
SELECT emp_id,
       emp_name,
       joining_date
FROM Employees
WHERE joining_date <
(
    SELECT AVG(joining_date)
    FROM Employees
);
```

## Explanation

The subquery calculates the average joining date of all employees.

The outer query returns employees whose joining date is earlier than the company average joining date.

These employees have been with the company longer than the average employee.

## Expected Output

| emp_id | emp_name | joining_date |
|---------|----------|-------------|
| 23 | Abhishek | 2018-05-21 |
| 43 | Divya | 2018-04-04 |
| 31 | Anjali | 2018-08-18 |
| 48 | Vivek | 2019-05-05 |
| ... | ... | ... |

(Output may vary based on dataset)

## Concepts Used

- Date Functions
- AVG()
- Subquery
- Date Comparison
- Aggregate Functions

## Interview Tip

Employees Joined Before Average Date:

```sql
SELECT *
FROM Employees
WHERE joining_date <
(
    SELECT AVG(joining_date)
    FROM Employees
);
```

Employees Joined After Average Date:

```sql
SELECT *
FROM Employees
WHERE joining_date >
(
    SELECT AVG(joining_date)
    FROM Employees
);
```

Interviewers often ask both variations.

## Alternative Solution Using CTE

```sql
WITH AverageJoiningDate AS
(
    SELECT AVG(joining_date) AS avg_joining_date
    FROM Employees
)

SELECT *
FROM Employees
WHERE joining_date <
(
    SELECT avg_joining_date
    FROM AverageJoiningDate
);
```

## Real-World Use Case

- Employee tenure analysis
- Workforce planning
- HR analytics
- Employee retention reporting
