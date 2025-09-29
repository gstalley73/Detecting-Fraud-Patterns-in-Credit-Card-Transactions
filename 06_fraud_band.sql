--How does fraud rate vary by transaction amount ranges?
SELECT 
	CASE 
        WHEN amount < 10 THEN '< $10'
        WHEN amount BETWEEN 10 AND 100 THEN '$10–$100'
        WHEN amount BETWEEN 100 AND 1000 THEN '$100–$1000'
        ELSE '> $1000'
    END AS amount_band,
    COUNT(*) AS total_transactions,
    SUM(CASE WHEN class = 1 THEN 1 ELSE 0 END) AS fraud_count,
    ROUND(100.0 * SUM(CASE WHEN class = 1 THEN 1 ELSE 0 END) / COUNT(*), 2) AS fraud_rate_pct
FROM creditcard_transactions
GROUP BY amount_band
ORDER BY fraud_rate_pct DESC;