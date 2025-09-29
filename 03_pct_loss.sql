
--What percentage of the total dollar amount is lost to fraud?
SELECT 
ROUND(100.0 * SUM(CASE WHEN class = 1 THEN amount ELSE 0 END) / SUM(amount), 4) AS fraud_loss_pct
FROM creditcard_transactions ct 