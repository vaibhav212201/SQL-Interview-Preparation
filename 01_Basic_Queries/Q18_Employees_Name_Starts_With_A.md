# Q18 - Employees Whose Name Starts With 'A'

## Problem

Retrieve all employees whose names start with the letter 'A'.

## SQL Query

```sql
SELECT *
FROM Employees
WHERE emp_name LIKE 'A%';
```

## Explanation

The LIKE operator is used for pattern matching.

'A%' means:

- A → name must start with 'A'
- % → any number of characters can follow

The query returns all employees whose names begin with the letter A.

## Expected Output

| emp_id | emp_name |
|---------|----------|
| 2 | Aman |
| 10 | Ankit |
| 20 | Aditi |
| 26 | Ayush |
| 31 | Anjali |
| 43 | Akash |
| 50 | Adarsh |

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

-- Exactly 5 characters
WHERE emp_name LIKE '_____';
```

%  = Any number of characters

_  = Exactly one character
