SELECT strftime('%Y-%m', date) AS month, SUM(amount) AS total_expense
FROM transactions
WHERE type = 'expense'
GROUP BY month
ORDER BY month;