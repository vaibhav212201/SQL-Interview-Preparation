# Q77 - Find Salary Difference From Department Average Using Window Function

## Problem

Display each employee along with the difference between their salary and their department's average salary.

## SQL Query

```sql
SELECT emp_id,
       emp_name,
       dept_id,
       salary,
       AVG(salary) OVER
       (
           PARTITION BY dept_id
       ) AS department_average_salary,
       salary -
       AVG(salary) OVER
       (
           PARTITION BY dept_id
       ) AS salary_difference
FROM Employees;
```

## Explanation

AVG() OVER(PARTITION BY dept_id) calculates the average salary of each department.

For every employee, the department average salary is displayed.

The salary difference is calculated as:

```sql
Employee Salary - Department Average Salary
```

Positive value:

```text
Employee earns above department average
```

Negative value:

```text
Employee earns below department average
```

## Expected Output

| emp_id | emp_name | dept_id | salary | department_average_salary | salary_difference |
|---------|----------|----------|---------|--------------------------|------------------|
| 1 | Rahul | 101 | 50000 | 81272.73 | -31272.73 |
| 10 | Ankit | 101 | 90000 | 81272.73 | 8727.27 |
| 43 | Divya | 101 | 97000 | 81272.73 | 15727.27 |

(Output may vary based on dataset)

## Concepts Used

- Window Function
- AVG()
- OVER()
- PARTITION BY
- Calculated Columns

## Interview Tip

Department Average:

```sql
AVG(salary) OVER
(
    PARTITION BY dept_id
)
```

Difference Calculation:

```sql
salary -
AVG(salary) OVER
(
    PARTITION BY dept_id
)
```

This is a common business analytics pattern.

## Real-World Use Case

- Compensation benchmarking
- HR analytics
- Employee performance reviews
- Salary analysis dashboards
