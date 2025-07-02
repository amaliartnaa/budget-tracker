SELECT date, SUM(amount) AS total_spent
FROM transactions
WHERE type = 'expense'
GROUP BY date
ORDER BY total_spent DESC
LIMIT 5;
