--How many total transactions and fraud cases are in the dataset?
SELECT
COUNT(*) AS total_transactions,
SUM(CASE WHEN class = 1 THEN 1 ELSE 0 END) AS fraud_transaction,
SUM(CASE WHEN class =0 THEN 1 ELSE 0 END) AS normal_transaction
FROM creditcard_transactions;