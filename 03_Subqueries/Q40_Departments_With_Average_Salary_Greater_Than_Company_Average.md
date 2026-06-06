## Problem

Find all departments whose average salary is greater than the overall average salary of the company.

## SQL Query

```sql
SELECT dept_id,
       AVG(salary) AS department_average_salary
FROM Employees
GROUP BY dept_id
HAVING AVG(salary) >
(
    SELECT AVG(salary)
    FROM Employees
);
```

## Explanation

The subquery calculates the overall average salary of all employees in the company.

The outer query groups employees by department and calculates the average salary for each department.

The HAVING clause filters only those departments whose average salary is greater than the company's overall average salary.

## Expected Output

| dept_id | department_average_salary |
|----------|--------------------------|
| 101 | 83090.91 |
| 106 | 73428.57 |
| ... | ... |

(Output may vary based on dataset)

## Concepts Used

- Subquery
- GROUP BY
- HAVING
- AVG()
- Aggregate Functions

## Interview Tip

Remember:

```sql
WHERE  -> Filters rows

HAVING -> Filters groups
```

Since AVG(salary) is an aggregate value, HAVING must be used instead of WHERE.

## Real-World Use Case

- Identifying high-paying departments
- Budget and compensation analysis
- HR salary benchmarking
