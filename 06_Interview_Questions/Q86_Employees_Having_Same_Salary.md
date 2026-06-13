# Q86 - Find Employees Having The Same Salary As Another Employee

## Problem

Find employees who share the same salary with at least one other employee.

## SQL Query

```sql
SELECT *
FROM Employees
WHERE salary IN
(
    SELECT salary
    FROM Employees
    GROUP BY salary
    HAVING COUNT(*) > 1
);
```

## Explanation

The subquery identifies salaries that appear more than once.

GROUP BY creates groups based on salary.

HAVING COUNT(*) > 1 filters only duplicate salary values.

The outer query returns all employees whose salary belongs to those duplicate salary groups.

## Expected Output

| emp_id | emp_name | salary |
|---------|----------|---------|
| 2 | Aman | 60000 |
| 35 | Isha | 60000 |
| 8 | Karan | 65000 |
| 50 | Adarsh | 65000 |
| ... | ... | ... |

(Output may vary based on dataset)

## Concepts Used

- Subquery
- IN
- GROUP BY
- HAVING
- COUNT()

## Interview Tip

To find duplicate salaries only:

```sql
SELECT salary,
       COUNT(*) AS employee_count
FROM Employees
GROUP BY salary
HAVING COUNT(*) > 1;
```

To find employees having duplicate salaries:

```sql
SELECT *
FROM Employees
WHERE salary IN
(
    SELECT salary
    FROM Employees
    GROUP BY salary
    HAVING COUNT(*) > 1
);
```

This is a very common SQL interview question.

## Alternative Solution Using Self Join

```sql
SELECT e1.emp_name,
       e2.emp_name,
       e1.salary
FROM Employees e1
INNER JOIN Employees e2
ON e1.salary = e2.salary
AND e1.emp_id <> e2.emp_id;
```

## Real-World Use Case

- Payroll analysis
- Salary benchmarking
- Duplicate value detection
- HR reporting
