# Q66 - Running Total Of Salaries Using SUM() OVER()

## Problem

Calculate a running total of salaries ordered by employee ID.

## SQL Query

```sql
SELECT emp_id,
       emp_name,
       salary,
       SUM(salary) OVER
       (
           ORDER BY emp_id
       ) AS running_total
FROM Employees;
```

## Explanation

SUM() OVER() calculates a cumulative total.

For each employee, the running total includes the current salary and all previous salaries according to the ORDER BY clause.

The running total grows as more rows are processed.

## Expected Output

| emp_id | emp_name | salary | running_total |
|---------|----------|---------|--------------|
| 1 | Rahul | 50000 | 50000 |
| 2 | Aman | 60000 | 110000 |
| 3 | Neha | 70000 | 180000 |
| 4 | Priya | 55000 | 235000 |

(Output may vary based on dataset)

## Concepts Used

- Window Function
- SUM()
- OVER()
- ORDER BY
- Running Total

## Interview Tip

Normal SUM():

```sql
SELECT SUM(salary)
FROM Employees;
```

returns one row.

Window SUM():

```sql
SUM(salary) OVER (ORDER BY emp_id)
```

returns a running total for every row.

## Real-World Use Case

- Sales dashboards
- Revenue tracking
- Financial reporting
- KPI monitoring
