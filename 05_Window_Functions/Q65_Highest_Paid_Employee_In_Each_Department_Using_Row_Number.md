# Q65 - Highest Paid Employee In Each Department Using ROW_NUMBER()

## Problem

Find the highest-paid employee in each department using the ROW_NUMBER() window function.

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
               ORDER BY salary DESC
           ) AS row_num
    FROM Employees
)

SELECT *
FROM EmployeeRanking
WHERE row_num = 1;
```

## Explanation

PARTITION BY dept_id creates separate groups for each department.

ROW_NUMBER() starts numbering from 1 within each department.

ORDER BY salary DESC ensures the highest salary receives Row Number 1.

The final query retrieves only the highest-paid employee from each department.

## Expected Output

| emp_id | emp_name | dept_id | salary | row_num |
|---------|----------|----------|---------|---------|
| 43 | Divya | 101 | 97000 | 1 |
| 2 | Aman | 102 | 60000 | 1 |
| 39 | Komal | 103 | 79000 | 1 |
| 33 | Payal | 103 | 77000 | 1 |
| ... | ... | ... | ... | ... |

(Output may vary based on dataset)

## Concepts Used

- Window Function
- ROW_NUMBER()
- PARTITION BY
- ORDER BY
- CTE

## Interview Tip

Without PARTITION BY:

```sql
ROW_NUMBER() OVER (ORDER BY salary DESC)
```

Ranking is performed across the entire company.

With PARTITION BY:

```sql
ROW_NUMBER() OVER
(
    PARTITION BY dept_id
    ORDER BY salary DESC
)
```

Ranking restarts for every department.

Example:

Department 101:

```text
1
2
3
4
```

Department 102:

```text
1
2
3
4
```

Department 103:

```text
1
2
3
4
```

## Real-World Use Case

- Highest-paid employee per department
- Top-performing salesperson per region
- Best-selling product per category
- Department-wise ranking reports
