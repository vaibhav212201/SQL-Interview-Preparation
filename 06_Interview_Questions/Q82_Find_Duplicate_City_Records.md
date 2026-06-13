# Q82 - Find Duplicate City Records

## Problem

Find cities that appear more than once in the Employees table.

## SQL Query

```sql
SELECT city,
       COUNT(*) AS total_employees
FROM Employees
GROUP BY city
HAVING COUNT(*) > 1;
```

## Explanation

GROUP BY creates a group for each city.

COUNT(*) counts the number of employees in each city.

HAVING COUNT(*) > 1 filters only those cities that occur multiple times.

## Expected Output

| city | total_employees |
|------|----------------|
| Delhi | 10 |
| Mumbai | 9 |
| Pune | 8 |
| Noida | 7 |

(Output may vary based on dataset)

## Concepts Used

- GROUP BY
- HAVING
- COUNT()
- Duplicate Detection

## Interview Tip

To find duplicate employee names:

```sql
SELECT emp_name,
       COUNT(*)
FROM Employees
GROUP BY emp_name
HAVING COUNT(*) > 1;
```

To find duplicate department IDs:

```sql
SELECT dept_id,
       COUNT(*)
FROM Employees
GROUP BY dept_id
HAVING COUNT(*) > 1;
```

This is one of the most frequently asked SQL interview questions.

## Real-World Use Case

- Data Quality Checks
- Duplicate Data Detection
- Data Cleaning
- Database Auditing
