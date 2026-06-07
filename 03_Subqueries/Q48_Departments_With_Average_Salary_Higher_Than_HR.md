## Problem

Find departments whose average salary is greater than the average salary of the HR department.

## SQL Query

```sql
SELECT dept_id,
       AVG(salary) AS average_salary
FROM Employees
GROUP BY dept_id
HAVING AVG(salary) >
(
    SELECT AVG(salary)
    FROM Employees
    WHERE dept_id = 102
);
```

## Explanation

The subquery calculates the average salary of the HR department (dept_id = 102).

The outer query calculates the average salary for each department.

The HAVING clause filters only those departments whose average salary is greater than the HR department's average salary.

## Expected Output

| dept_id | average_salary |
|----------|---------------|
| 101 | 81272.73 |
| 103 | 69500.00 |
| 104 | 62111.11 |
| 106 | 73428.57 |

(Output may vary based on dataset)

## Concepts Used

- Subquery
- AVG()
- GROUP BY
- HAVING
- Aggregate Functions
- Department-wise Analysis

## Interview Tip

Use HAVING when filtering aggregated results.

Incorrect:

```sql
SELECT dept_id,
       AVG(salary)
FROM Employees
GROUP BY dept_id
WHERE AVG(salary) > 50000;
```

Correct:

```sql
SELECT dept_id,
       AVG(salary)
FROM Employees
GROUP BY dept_id
HAVING AVG(salary) > 50000;
```

## Real-World Use Case

- Department salary comparison
- Compensation benchmarking
- Budget and payroll analysis
