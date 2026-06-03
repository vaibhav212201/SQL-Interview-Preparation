# Q10 - Employees Not From Delhi

## Problem

Retrieve all employees who do not belong to Delhi.

## SQL Query

```sql
SELECT *
FROM Employees
WHERE city <> 'Delhi';
```

## Explanation

The <> operator means "not equal to".

The query returns all employees whose city is not Delhi.

## Expected Output

| emp_id | emp_name | city |
|---------|----------|------|
| 2 | Aman | Noida |
| 4 | Priya | Mumbai |
| 5 | Rohit | Pune |
| ... | ... | ... |

(Output may vary based on dataset)

## Concepts Used

- WHERE
- <> (Not Equal To)
- Data Filtering
