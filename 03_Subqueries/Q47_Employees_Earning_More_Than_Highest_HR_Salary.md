## Problem

Find all employees whose salary is greater than the highest salary in the HR department.

## SQL Query

```sql
SELECT *
FROM Employees
WHERE salary >
(
    SELECT MAX(salary)
    FROM Employees
    WHERE dept_id = 102
);
```

## Explanation

The subquery finds the highest salary in the HR department.

The outer query returns employees whose salary is greater than that value.

The subquery returns a single value, which is then used for comparison in the outer query.

## Expected Output

| emp_id | emp_name | salary |
|---------|----------|---------|
| 3 | Neha | 70000 |
| 10 | Ankit | 90000 |
| 23 | Abhishek | 95000 |
| ... | ... | ... |

(Output may vary based on dataset)

## Concepts Used

- Subquery
- MAX()
- Comparison Operators
- Aggregate Functions
- Nested Query

## Interview Tip

First check the HR department salary:

```sql
SELECT MAX(salary)
FROM Employees
WHERE dept_id = 102;
```

Then compare all employee salaries against that value.

This is a classic example of a subquery returning a single value.

## Real-World Use Case

- Salary benchmarking across departments
- Compensation analysis
- Identifying high earners compared to a reference department
