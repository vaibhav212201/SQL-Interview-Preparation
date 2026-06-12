# Q70 - Find Next Employee Salary Using LEAD()

## Problem

Display each employee along with the salary of the next employee based on employee ID.

## SQL Query

```sql
SELECT emp_id,
       emp_name,
       salary,
       LEAD(salary) OVER
       (
           ORDER BY emp_id
       ) AS next_salary
FROM Employees;
```

## Explanation

LEAD() accesses data from the next row without using a self join.

ORDER BY emp_id determines the sequence of rows.

For each employee, LEAD() returns the salary of the employee appearing immediately after them.

The last row has no next row, so NULL is returned.

## Expected Output

| emp_id | emp_name | salary | next_salary |
|---------|----------|---------|------------|
| 1 | Rahul | 50000 | 60000 |
| 2 | Aman | 60000 | 70000 |
| 3 | Neha | 70000 | 55000 |
| 4 | Priya | 55000 | 80000 |
| ... | ... | ... | ... |
| 50 | Adarsh | 65000 | NULL |

(Output may vary based on dataset)

## Concepts Used

- Window Function
- LEAD()
- OVER()
- ORDER BY

## Interview Tip

Get next salary:

```sql
LEAD(salary) OVER (ORDER BY emp_id)
```

Get salary 2 rows ahead:

```sql
LEAD(salary, 2) OVER (ORDER BY emp_id)
```

Default value if next row doesn't exist:

```sql
LEAD(salary, 1, 0) OVER (ORDER BY emp_id)
```

Result:

```text
Last row → 0
Instead of → NULL
```

## Difference Between LAG() and LEAD()

LAG():

```text
Current Row ← Previous Row
```

LEAD():

```text
Current Row → Next Row
```

## Real-World Use Case

- Forecast analysis
- Comparing current and next transactions
- Time-series analysis
- Trend reporting
