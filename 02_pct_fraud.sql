--What percentage of transactions are fraudulent?
SELECT 
    ROUND(100.0 * SUM(CASE WHEN class = 1 THEN 1 ELSE 0 END) / COUNT(*), 4) AS fraud_percentage
FROM creditcard_transactions;