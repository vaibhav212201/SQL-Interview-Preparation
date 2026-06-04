# Q20 - Employees Sorted By Joining Date (Latest First)

## Problem

Retrieve all employees and display them in descending order of their joining date.

## SQL Query

```sql
SELECT *
FROM Employees
ORDER BY joining_date DESC;
```

## Explanation

ORDER BY is used to sort records.

joining_date DESC sorts employees from the most recently joined employee to the oldest joined employee.

DESC stands for Descending Order.

## Expected Output

| emp_id | emp_name | joining_date |
|---------|----------|-------------|
| 40 | Ritik | 2023-05-15 |
| 14 | Riya | 2023-04-14 |
| 4 | Priya | 2023-02-01 |
| ... | ... | ... |

(Output may vary based on dataset)

## Concepts Used

- ORDER BY
- DESC
- Date Sorting
- Data Ordering

## Interview Tip

To display employees from oldest to newest:

```sql
SELECT *
FROM Employees
ORDER BY joining_date ASC;
```

ASC = Ascending Order (Oldest → Newest)

DESC = Descending Order (Newest → Oldest)
