# Q76 - Find Salary Difference Between Current Employee And Previous Employee Using LAG()

## Problem

Display each employee along with the difference between their salary and the previous employee's salary.

## SQL Query

```sql
SELECT emp_id,
       emp_name,
       salary,
       LAG(salary) OVER
       (
           ORDER BY emp_id
       ) AS previous_salary,
       salary - LAG(salary) OVER
       (
           ORDER BY emp_id
       ) AS salary_difference
FROM Employees;
```

## Explanation

LAG() retrieves the salary of the previous employee.

The salary difference is calculated as:

```sql
Current Salary - Previous Salary
```

The first employee has no previous employee, so both previous_salary and salary_difference will be NULL.

## Expected Output

| emp_id | emp_name | salary | previous_salary | salary_difference |
|---------|----------|---------|----------------|------------------|
| 1 | Rahul | 50000 | NULL | NULL |
| 2 | Aman | 60000 | 50000 | 10000 |
| 3 | Neha | 70000 | 60000 | 10000 |
| 4 | Priya | 55000 | 70000 | -15000 |

(Output may vary based on dataset)

## Concepts Used

- Window Function
- LAG()
- OVER()
- ORDER BY
- Calculated Columns

## Interview Tip

Previous Salary:

```sql
LAG(salary) OVER (ORDER BY emp_id)
```

Salary Difference:

```sql
salary -
LAG(salary) OVER (ORDER BY emp_id)
```

Positive Value:

```text
Current salary is higher
```

Negative Value:

```text
Current salary is lower
```

## Real-World Use Case

- Month-over-month sales comparison
- Revenue growth analysis
- Trend analysis
- Financial reporting
- Change detection dashboards
