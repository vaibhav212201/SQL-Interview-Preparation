## Problem

Find all employees who do not work in the HR department using a subquery.

## SQL Query

```sql
SELECT *
FROM Employees
WHERE dept_id <>
(
    SELECT dept_id
    FROM Departments
    WHERE department_name = 'HR'
);
```

## Explanation

The subquery finds the department ID of the HR department.

The outer query returns all employees whose department ID is not equal to the HR department ID.

The <> operator means "not equal to".

## Expected Output

| emp_id | emp_name | dept_id |
|---------|----------|----------|
| 1 | Rahul | 101 |
| 3 | Neha | 101 |
| 4 | Priya | 103 |
| 5 | Rohit | 101 |
| ... | ... | ... |

(Output may vary based on dataset)

## Concepts Used

- Subquery
- WHERE Clause
- <> (Not Equal To)
- Single Value Subquery
- Filtering Data

## Interview Tip

Alternative Solution:

```sql
SELECT *
FROM Employees
WHERE dept_id NOT IN
(
    SELECT dept_id
    FROM Departments
    WHERE department_name = 'HR'
);
```

For a single value, <> works well.

For multiple values, use NOT IN.

## Real-World Use Case

- Excluding specific departments from reports
- Workforce analysis
- Department-based employee filtering
