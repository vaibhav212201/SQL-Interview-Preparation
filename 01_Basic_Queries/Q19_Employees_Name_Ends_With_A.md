# Q19 - Employees Whose Name Ends With 'a'

## Problem

Retrieve all employees whose names end with the letter 'a'.

## SQL Query

```sql
SELECT *
FROM Employees
WHERE emp_name LIKE '%a';
```

## Explanation

The LIKE operator is used for pattern matching.

'%a' means:

- % → any number of characters can come before
- a → name must end with the letter 'a'

The query returns all employees whose names end with 'a'.

## Expected Output

| emp_id | emp_name |
|---------|----------|
| 3 | Neha |
| 4 | Priya |
| 14 | Riya |
| 20 | Aditi |
| ... | ... |

(Output may vary based on dataset)

## Concepts Used

- LIKE
- Wildcards (%)
- Pattern Matching
- WHERE Clause

## Interview Tip

Common LIKE patterns:

```sql
-- Starts with A
WHERE emp_name LIKE 'A%';

-- Ends with a
WHERE emp_name LIKE '%a';

-- Contains 'an'
WHERE emp_name LIKE '%an%';

-- Starts with A and ends with a
WHERE emp_name LIKE 'A%a';
```

LIKE is frequently used in search and filtering operations.
