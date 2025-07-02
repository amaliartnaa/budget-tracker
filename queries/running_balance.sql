SELECT date, amount,
  SUM(CASE WHEN type = 'income' THEN amount ELSE -amount END)
  OVER (ORDER BY date) AS running_balance
FROM transactions;
