# Q83 - Remove Duplicate Records Using ROW_NUMBER()

## Problem

Assume the Employees table contains duplicate employee records.

Remove duplicate records while keeping only one record for each employee.

## SQL Query

```sql
WITH DuplicateRecords AS
(
    SELECT *,
           ROW_NUMBER() OVER
           (
               PARTITION BY emp_name, dept_id, salary
               ORDER BY emp_id
           ) AS row_num
    FROM Employees
)

SELECT *
FROM DuplicateRecords
WHERE row_num = 1;
```

## Explanation

PARTITION BY groups similar records together.

ROW_NUMBER() assigns a unique number within each duplicate group.

The first occurrence gets row_num = 1.

Duplicate rows get row_num > 1.

Keeping only row_num = 1 removes duplicates.

## Expected Output

Duplicate records are removed and only unique employee records remain.

## Concepts Used

- Window Function
- ROW_NUMBER()
- PARTITION BY
- CTE
- Duplicate Removal

## Interview Tip

To identify duplicate records:

```sql
WITH DuplicateRecords AS
(
    SELECT *,
           ROW_NUMBER() OVER
           (
               PARTITION BY emp_name, dept_id, salary
               ORDER BY emp_id
           ) AS row_num
    FROM Employees
)

SELECT *
FROM DuplicateRecords
WHERE row_num > 1;
```

To remove duplicates:

```sql
WHERE row_num = 1;
```

This is one of the most frequently asked SQL interview questions.

## Real-World Use Case

- Data Cleaning
- ETL Pipelines
- Data Quality Checks
- Data Warehousing
