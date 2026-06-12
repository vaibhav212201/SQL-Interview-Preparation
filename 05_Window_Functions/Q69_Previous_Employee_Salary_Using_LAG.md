# Q69 - Find Previous Employee Salary Using LAG()

## Problem

Display each employee along with the salary of the previous employee based on employee ID.

## SQL Query

```sql
SELECT emp_id,
       emp_name,
       salary,
       LAG(salary) OVER
       (
           ORDER BY emp_id
       ) AS previous_salary
FROM Employees;
```

## Explanation

LAG() accesses data from a previous row without using a self join.

ORDER BY emp_id determines the sequence of rows.

For each employee, LAG() returns the salary of the employee appearing immediately before them.

The first row has no previous row, so NULL is returned.

## Expected Output

| emp_id | emp_name | salary | previous_salary |
|---------|----------|---------|----------------|
| 1 | Rahul | 50000 | NULL |
| 2 | Aman | 60000 | 50000 |
| 3 | Neha | 70000 | 60000 |
| 4 | Priya | 55000 | 70000 |

(Output may vary based on dataset)

## Concepts Used

- Window Function
- LAG()
- OVER()
- ORDER BY

## Interview Tip

Get previous salary:

```sql
LAG(salary) OVER (ORDER BY emp_id)
```

Get salary 2 rows back:

```sql
LAG(salary, 2) OVER (ORDER BY emp_id)
```

Default value if previous row doesn't exist:

```sql
LAG(salary, 1, 0) OVER (ORDER BY emp_id)
```

Result:

```text
First row → 0
Instead of → NULL
```

## Real-World Use Case

- Month-over-month sales comparison
- Previous transaction analysis
- Trend analysis
- Change detection reports
