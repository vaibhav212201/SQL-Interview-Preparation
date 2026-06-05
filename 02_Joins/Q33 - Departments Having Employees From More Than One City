## Problem

Find departments that have employees working from multiple cities.

## SQL Query

```sql
SELECT d.department_name,
       COUNT(DISTINCT e.city) AS total_cities
FROM Employees e
INNER JOIN Departments d
ON e.dept_id = d.dept_id
GROUP BY d.department_name
HAVING COUNT(DISTINCT e.city) > 1;
```

## Explanation

COUNT(DISTINCT city) counts unique cities in each department.

HAVING filters departments with employees from more than one city.

## Expected Output

| department_name | total_cities |
|----------------|-------------|
| IT | 5 |
| HR | 4 |
| Finance | 3 |

(Output may vary based on dataset)

## Concepts Used

- INNER JOIN
- DISTINCT
- COUNT()
- GROUP BY
- HAVING
```
