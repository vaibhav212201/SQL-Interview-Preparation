# Q90 - Find Departments Where Average Salary Is Greater Than 70000

## Problem

Find departments whose average salary is greater than 70000.

## SQL Query

```sql
SELECT d.department_name,
       AVG(e.salary) AS average_salary
FROM Employees e
INNER JOIN Departments d
ON e.dept_id = d.dept_id
GROUP BY d.department_name
HAVING AVG(e.salary) > 70000;
```

## Explanation

The Employees and Departments tables are joined using dept_id.

AVG() calculates the average salary for each department.

GROUP BY creates department-wise groups.

HAVING filters departments whose average salary exceeds 70000.

Unlike WHERE, HAVING is used with aggregate functions.

## Expected Output

| department_name | average_salary |
|-----------------|---------------|
| IT | 81272.73 |
| Operations | 73428.57 |

(Output may vary based on dataset)

## Concepts Used

- INNER JOIN
- AVG()
- GROUP BY
- HAVING
- Aggregate Functions

## Interview Tip

Wrong:

```sql
WHERE AVG(salary) > 70000
```

Correct:

```sql
HAVING AVG(salary) > 70000
```

Rule:

```text
WHERE  → Filters Rows

HAVING → Filters Groups
```

This is one of the most common SQL interview questions.

## Alternative Solution

```sql
SELECT dept_id,
       AVG(salary) AS average_salary
FROM Employees
GROUP BY dept_id
HAVING AVG(salary) > 70000;
```

## Real-World Use Case

- Department performance analysis
- Payroll reporting
- Budget planning
- HR analytics
