-- Introductory PostgreSQL practice queries for the fictional sample dataset.
-- These are examples to study and adapt, not production billing queries.

-- 1. Review open invoices.
SELECT invoice_id, customer_id, invoice_date, due_date, amount, currency, status
FROM invoices
WHERE status = 'open'
ORDER BY due_date;

-- 2. Find failed payment attempts.
SELECT payment_attempt_id, invoice_id, attempted_at, amount, currency, failure_code
FROM payment_attempts
WHERE status = 'failed'
ORDER BY attempted_at DESC;

-- 3. Compare invoice state with payment-attempt state.
-- A succeeded attempt does not automatically prove an invoice was settled.
SELECT i.invoice_id, i.customer_id, i.amount AS invoice_amount,
       i.status AS invoice_status, p.payment_attempt_id,
       p.status AS attempt_status, p.settled
FROM invoices AS i
LEFT JOIN payment_attempts AS p ON p.invoice_id = i.invoice_id
ORDER BY i.invoice_id, p.attempted_at;

-- 4. Summarize attempts by outcome.
SELECT status, COUNT(*) AS attempt_count, SUM(amount) AS attempted_amount
FROM payment_attempts
GROUP BY status
ORDER BY status;

-- 5. Flag invoices with a succeeded attempt but no settled attempt.
-- This identifies records for investigation; it does not diagnose the cause.
SELECT i.invoice_id, i.customer_id, i.status AS invoice_status
FROM invoices AS i
WHERE EXISTS (
    SELECT 1 FROM payment_attempts AS p
    WHERE p.invoice_id = i.invoice_id AND p.status = 'succeeded'
)
AND NOT EXISTS (
    SELECT 1 FROM payment_attempts AS p
    WHERE p.invoice_id = i.invoice_id AND p.settled = TRUE
);
