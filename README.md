# Detecting-Fraud-Patterns-in-Credit-Card-Transactions

Built a SQL and Tableau dashboard analyzing 284,807 credit card transactions to detect fraud. Identified that 0.17% of transactions were fraudulent, but accounted for 0.24% of transaction value, with fraud concentrated in low-value purchases and a few high-value transactions. This dashboard has KPIs, fraud patterns by amount and time, and the highest transactions that have fraud.

Key Insights:
- Fraud is rare, with only 492/284,807 being fraudulent, but 0.24% of total dollar volume is due to fraud.
- The Fraud Transactions per Hour chart shows spikes in certain windows; it can be inferred that fraud attempts are being timed strategically.
- Fraud happens mostly in smaller amounts; most fraud happens in <$10 transactions. It can be inferred that this is a strategy to avoid detection.
- High-value fraud cases exist and must be tracked. The Top 10 Highest Fraudulent Transactions table shows transactions over $1,000. These transactions make up a large share of total fraud loss.
