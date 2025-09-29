--What are the top 10 largest fraudulent transactions?
SELECT
transaction_id,
time,
amount
FROM creditcard_transactions 
WHERE class = 1
ORDER BY amount DESC
LIMIT 10;