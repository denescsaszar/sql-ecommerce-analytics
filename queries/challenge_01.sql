-- =============================================================================
-- Challenge 1: Get all customers from Germany
-- Level: Beginner
-- Skills: SELECT, WHERE
-- Expected: 3 rows (Anna Schmidt, Max Müller, Sophie Weber)
-- =============================================================================

-- JavaScript equivalent:
-- const germanCustomers = customers.filter(c => c.country === 'Germany');

-- SQL Solution:
SELECT 
    customer_id,
    first_name,
    last_name,
    email,
    country,
    city
FROM customers
WHERE country = 'Germany';
