# Q73 - Find The Lowest Paid Employee In Each Department Using ROW_NUMBER()

## Problem

Find the lowest-paid employee in each department.

## SQL Query

```sql
WITH EmployeeRanking AS
(
    SELECT emp_id,
           emp_name,
           dept_id,
           salary,
           ROW_NUMBER() OVER
           (
               PARTITION BY dept_id
               ORDER BY salary ASC
           ) AS row_num
    FROM Employees
)

SELECT *
FROM EmployeeRanking
WHERE row_num = 1;
```

## Explanation

PARTITION BY dept_id creates separate groups for each department.

ORDER BY salary ASC sorts employees from lowest salary to highest salary within each department.

ROW_NUMBER() assigns a rank starting from 1.

The employee with Row Number 1 is the lowest-paid employee in that department.

## Expected Output

| emp_id | emp_name | dept_id | salary | row_num |
|---------|----------|----------|---------|---------|
| 1 | Rahul | 101 | 50000 | 1 |
| 6 | Simran | 102 | 45000 | 1 |
| 4 | Priya | 103 | 55000 | 1 |
| 14 | Riya | 104 | 47000 | 1 |
| 30 | Harsh | 105 | 54000 | 1 |
| 28 | Nitin | 106 | 67000 | 1 |

(Output may vary based on dataset)

## Concepts Used

- Window Function
- ROW_NUMBER()
- PARTITION BY
- ORDER BY
- CTE

## Interview Tip

Highest Paid Employee Per Department:

```sql
ROW_NUMBER() OVER
(
    PARTITION BY dept_id
    ORDER BY salary DESC
)
```

Lowest Paid Employee Per Department:

```sql
ROW_NUMBER() OVER
(
    PARTITION BY dept_id
    ORDER BY salary ASC
)
```

Only the sorting order changes.

## Real-World Use Case

- Salary analysis
- Compensation benchmarking
- HR reporting
- Department-wise payroll review
