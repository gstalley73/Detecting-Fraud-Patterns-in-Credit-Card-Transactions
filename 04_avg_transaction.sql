--What is the average transaction amount for fraud vs. non-fraud
SELECT 
    class,
    ROUND(AVG(amount), 2) AS avg_transaction,
    ROUND(MIN(amount), 2) AS min_transaction,
    ROUND(MAX(amount), 2) AS max_transaction
FROM creditcard_transactions
GROUP BY class;