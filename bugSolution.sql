```sql
SELECT * FROM employees WHERE department = 'Sales' AND (salary > 100000 OR salary IS NULL);
-- Or, to exclude NULL salaries explicitly:
SELECT * FROM employees WHERE department = 'Sales' AND salary > 100000 AND salary IS NOT NULL;
```
The solution uses either `OR salary IS NULL` to include rows with NULL salaries or `AND salary IS NOT NULL` to explicitly exclude them, depending on the desired behavior.