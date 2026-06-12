# Q75 - Divide Employees Into 4 Salary Groups Using NTILE()

## Problem

Divide employees into 4 salary groups (quartiles) based on salary.

## SQL Query

```sql
SELECT emp_id,
       emp_name,
       salary,
       NTILE(4) OVER
       (
           ORDER BY salary DESC
       ) AS salary_quartile
FROM Employees;
```

## Explanation

NTILE(4) divides employees into 4 approximately equal groups.

Employees are sorted by salary in descending order.

Group 1 contains the highest-paid employees.

Group 4 contains the lowest-paid employees.

Since there are 50 employees:

```text
Quartile 1 → Top 25%
Quartile 2 → Next 25%
Quartile 3 → Next 25%
Quartile 4 → Bottom 25%
```

## Expected Output

| emp_id | emp_name | salary | salary_quartile |
|---------|----------|---------|----------------|
| 43 | Divya | 97000 | 1 |
| 23 | Abhishek | 95000 | 1 |
| 49 | Ruchi | 92000 | 1 |
| ... | ... | ... | ... |
| 6 | Simran | 45000 | 4 |

(Output may vary based on dataset)

## Concepts Used

- Window Function
- NTILE()
- OVER()
- ORDER BY

## Interview Tip

Divide employees into 2 groups:

```sql
NTILE(2) OVER (ORDER BY salary DESC)
```

Divide employees into 3 groups:

```sql
NTILE(3) OVER (ORDER BY salary DESC)
```

Divide employees into 4 groups:

```sql
NTILE(4) OVER (ORDER BY salary DESC)
```

Divide employees into 10 groups:

```sql
NTILE(10) OVER (ORDER BY salary DESC)
```

## Difference Between Ranking Functions

ROW_NUMBER()

```text
1
2
3
4
```

RANK()

```text
1
1
3
4
```

DENSE_RANK()

```text
1
1
2
3
```

NTILE(4)

```text
1
1
1
2
2
2
3
3
4
4
```

NTILE() creates groups, not ranks.

## Real-World Use Case

- Customer Segmentation
- Salary Band Classification
- Revenue Analysis
- Employee Performance Bucketing
- Business Intelligence Reporting
