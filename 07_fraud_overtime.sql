--How does fraud evolve over time? (aggregated by hour)
SELECT 
    (time / 3600) AS hour,
    COUNT(*) AS total_transactions,
    SUM(CASE WHEN class = 1 THEN 1 ELSE 0 END) AS fraud_transactions,
    ROUND(100.0 * SUM(CASE WHEN class = 1 THEN 1 ELSE 0 END) / COUNT(*), 2) AS fraud_rate_pct
FROM creditcard_transactions
GROUP BY hour
ORDER BY hour;