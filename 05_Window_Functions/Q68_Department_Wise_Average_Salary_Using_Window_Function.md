# Q68 - Department Wise Average Salary Using AVG() OVER()

## Problem

Display each employee along with the average salary of their department using a window function.

## SQL Query

```sql
SELECT emp_id,
       emp_name,
       dept_id,
       salary,
       AVG(salary) OVER
       (
           PARTITION BY dept_id
       ) AS department_average_salary
FROM Employees;
```

## Explanation

PARTITION BY dept_id divides employees into separate departments.

AVG() OVER() calculates the average salary within each department.

Unlike GROUP BY, the original employee rows are not collapsed.

Each employee record remains visible along with the department average salary.

## Expected Output

| emp_id | emp_name | dept_id | salary | department_average_salary |
|---------|----------|----------|---------|--------------------------|
| 1 | Rahul | 101 | 50000 | 81272.73 |
| 3 | Neha | 101 | 70000 | 81272.73 |
| 5 | Rohit | 101 | 80000 | 81272.73 |
| 10 | Ankit | 101 | 90000 | 81272.73 |

(Output may vary based on dataset)

## Concepts Used

- Window Function
- AVG()
- OVER()
- PARTITION BY

## Interview Tip

Using GROUP BY:

```sql
SELECT dept_id,
       AVG(salary)
FROM Employees
GROUP BY dept_id;
```

Result:

```text
One row per department
```

Using Window Function:

```sql
AVG(salary) OVER
(
    PARTITION BY dept_id
)
```

Result:

```text
All employee rows remain visible
+
Department average shown for each row
```

This is one of the biggest advantages of Window Functions.

## Real-World Use Case

- Salary benchmarking
- Employee compensation analysis
- Department performance reporting
- HR analytics dashboards
